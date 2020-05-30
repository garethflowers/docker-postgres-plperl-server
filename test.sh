#!/usr/bin/env sh
set -e

export DOCKERFILE_PATH=Dockerfile
export IMAGE_NAME=postgres-plperl-server

source hooks/build

docker rm \
	--force \
	--volumes \
	postgres-plperl-server \
	|| true

docker run \
	--detach \
	--name postgres-plperl-server \
	postgres-plperl-server

until docker exec \
	postgres-plperl-server \
	pg_isready
do
	sleep 1
done

docker exec \
	postgres-plperl-server \
	psql \
	--command "CREATE EXTENSION plperl;" \
	--user postgres

docker exec \
	postgres-plperl-server \
	psql \
	--command "CREATE EXTENSION plperlu;" \
	--user postgres

docker rm \
	--force \
	--volumes \
	postgres-plperl-server

echo "\nOK"
