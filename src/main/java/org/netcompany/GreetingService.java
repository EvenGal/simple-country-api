package org.netcompany;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.transaction.Transactional;
import jakarta.ws.rs.core.Response;

import java.util.List;

@ApplicationScoped
public class GreetingService {

    @Inject
    GreetingBean greetingBean;

    public List<Country> getAllCountries() {
        return greetingBean.getAllCountries();
    }

    public Country getSpecificCountry(int code) {
        return greetingBean.getSpecificCountry(code);
    }

    @Transactional
    public void createCountry(Country country) {
        greetingBean.createCountry(country);
    }
}
