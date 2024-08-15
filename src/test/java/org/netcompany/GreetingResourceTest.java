package org.netcompany;

import io.quarkus.test.common.http.TestHTTPEndpoint;
import io.quarkus.test.junit.QuarkusTest;
import jakarta.json.Json;
import org.junit.jupiter.api.Test;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.*;
import static org.junit.jupiter.api.Assertions.*;

@QuarkusTest
@TestHTTPEndpoint(GreetingResource.class)
class GreetingResourceTest {

    @Test
    void getSpecificCountry() {
        given()
                .when()
                .get("/47")
                .then()
                .body(is("{\"code\":47,\"gdpUsd\":5.158E+11,\"id\":1,\"iso\":\"NO\",\"name\":\"Norway\",\"population\":5009150}"))
        ;
    }

    @Test
    void createCountry() {
    }
}