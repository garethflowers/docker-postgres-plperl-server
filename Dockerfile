FROM postgres:9.6.8-alpine

LABEL maintainer=garethflowers \
	name=postgres-plperl-server \
	version=9.6.8

ENV POSTGRES_INITDB_ARGS --encoding=UNICODE --lc-collate=C --lc-ctype=C

RUN echo http://dl-cdn.alpinelinux.org/alpine/v3.6/main > /etc/apk/repositories \
	&& apk add --no-cache \
	perl=5.24.4-r1 \
	postgresql-plperl=9.6.10-r0 \
	postgresql-plperl-contrib=9.6.10-r0 \
	&& rm -fr /var/cache/apk/* \
	&& mv /usr/lib/postgresql/* /usr/local/lib/postgresql/ \
	&& mv /usr/share/postgresql/extension/* /usr/local/share/postgresql/extension/
