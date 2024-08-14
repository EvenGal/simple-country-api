targetScope = 'resourceGroup'
param location string = resourceGroup().location
param appEnvironmentName string = 'aca-env'
param pgSvcName string = 'postgres01'
param pgsqlCliAppName string = 'psql-cloud-cli-app'

resource logAnalytics 'Microsoft.OperationalInsights/workspaces@2022-10-01' = {
  name: '${appEnvironmentName}-log-analytics'
  location: location
  properties: {
    sku: {
      name: 'PerGB2018'
    }
  }
}

resource appEnvironment 'Microsoft.App/managedEnvironments@2023-04-01-preview' = {
  name: appEnvironmentName
  location: location
  properties: {
    appLogsConfiguration: {
      destination: 'log-analytics'
      logAnalyticsConfiguration: {
        customerId: logAnalytics.properties.customerId
        sharedKey: logAnalytics.listKeys().primarySharedKey
      }
    }
  }
}

resource postgres 'Microsoft.App/containerApps@2023-04-01-preview' = {
name: pgSvcName
  location: location
  properties: {
    environmentId: appEnvironment.id
    configuration: {
      service: {
          type: 'postgres'
      }
    }
  }
}

output postgresLogs string = 'az containerapp logs show -n ${postgres.name} -g ${resourceGroup().name} --follow --tail 30'
