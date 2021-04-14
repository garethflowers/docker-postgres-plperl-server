FROM postgres:9.6.16-alpine

ARG BUILD_DATE
ARG VERSION
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
	org.label-schema.docker.cmd="docker run --detach --publish 5432:5432 garethflowers/postgres-plperl-server" \
	org.label-schema.description="PostgreSQL with PlPerl Extension" \
	org.label-schema.name="postgres-plperl-server" \
	org.label-schema.schema-version="1.0" \
	org.label-schema.url="https://www.postgresql.org" \
	org.label-schema.vcs-ref=$VCS_REF \
	org.label-schema.vcs-url="https://github.com/garethflowers/docker-postgres-plperl-server" \
	org.label-schema.vendor="garethflowers" \
	org.label-schema.version=$VERSION

ENV POSTGRES_INITDB_ARGS --encoding=UNICODE --lc-collate=C --lc-ctype=C

RUN echo http://dl-cdn.alpinelinux.org/alpine/v3.6/main > /etc/apk/repositories \
	&& apk add --no-cache \
	perl=5.24.4-r2 \
	postgresql-plperl=9.6.13-r0 \
	postgresql-plperl-contrib=9.6.13-r0 \
	&& rm -fr /var/cache/apk/* \
	&& mv /usr/lib/postgresql/* /usr/local/lib/postgresql/ \
	&& mv /usr/share/postgresql/extension/* /usr/local/share/postgresql/extension/
