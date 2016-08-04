FROM postgres:latest
MAINTAINER garethflowers

ENV POSTGRES_INITDB_ARGS --encoding='UNICODE' --lc-collate='C' --lc-ctype='C'

RUN apt-get update && \
    apt-get install -y postgresql-plperl-$PG_MAJOR \
    && rm -rf /var/lib/apt/lists/*
