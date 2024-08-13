FROM registry.access.redhat.com/ubi8/ubi-minimal:8.9
WORKDIR /work/
RUN chown 1001 /work \
    && chmod "g+rwX" /work \
    && chown 1001:root /work
COPY --chown=1001:root target/*-runner /work/application

EXPOSE 80
USER 1001
CMD ["./application", "-Dquarkus.http.host=0.0.0.0", "-Dquarkus.http.port=80"]
