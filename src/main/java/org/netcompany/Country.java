package org.netcompany;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Country extends PanacheEntityBase {
    @Id
    public int id;
    public String name;
    public int code;
    public String iso;
    public int population;
    public float gdpUsd;

    public static Country findByCode(int code) {
        return find("code", code).firstResult();
    }

    public static void createCountry(Country country) {
        country.persist();
    }
}
