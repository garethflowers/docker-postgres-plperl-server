FROM postgres:9.6.7-alpine

ENV POSTGRES_INITDB_ARGS --encoding='UNICODE' --lc-collate='C' --lc-ctype='C'

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/main' > /etc/apk/repositories && \
    cat /etc/apk/repositories && \
    apk add --no-cache postgresql-plperl && \
    rm -rf /var/cache/apk
