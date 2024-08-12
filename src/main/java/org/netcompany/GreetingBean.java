package org.netcompany;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.transaction.Transactional;

import java.util.List;

@ApplicationScoped
public class GreetingBean {

    public List<Country> getAllCountries() {
        return Country.listAll();
    }

    public Country getSpecificCountry(int code) {
        return Country.findByCode(code);
    }

    public void createCountry(Country country) {
        Country.createCountry(country);
    }
}
