FROM plus3it/tardigrade-ci:0.16.0

WORKDIR /ci-harness
ENTRYPOINT ["make"]

