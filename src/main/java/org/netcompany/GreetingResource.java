package org.netcompany;

import io.quarkus.logging.Log;
import jakarta.inject.Inject;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

import java.util.List;

@Path("/countries")
public class GreetingResource {

    @Inject
    GreetingService greetingService;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Country> getAllCountries() {
        return greetingService.getAllCountries();
    }

    @GET
    @Path("/{code}")
    @Produces(MediaType.APPLICATION_JSON)
    public Country getSpecificCountry(@PathParam("code") int code) {
        return greetingService.getSpecificCountry(code);
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response createCountry(Country country) {
        greetingService.createCountry(country);
        return Response.ok(country).status(201).build();
    }
}
