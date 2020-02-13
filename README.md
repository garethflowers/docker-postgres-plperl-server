[![Build Status][I1]][1] [![Image Layers][I2]][2] [![Docker Pulls][I3]][3]

# PostgreSQL Server with PL/Perl

PostgreSQL Database with the PL/Perl extension

## How to use this image

### Start a PostgreSQL Server instance

To start a container use the following:
```sh
docker run \
	--name my-postgres-plperl-server \
	garethflowers/postgres-plperl-server
```

## License

*	PostgreSQL is released under the [PostgreSQL License][4]
*	This image is released under the [MIT License][5]

[I1]: https://travis-ci.org/garethflowers/docker-postgres-plperl-server.svg?branch=master
[I2]: https://images.microbadger.com/badges/image/garethflowers/postgres-plperl-server.svg
[I3]: https://img.shields.io/docker/pulls/garethflowers/postgres-plperl-server.svg
[1]: https://travis-ci.org/garethflowers/docker-postgres-plperl-server
[2]: https://microbadger.com/images/garethflowers/postgres-plperl-server
[3]: https://store.docker.com/community/images/garethflowers/postgres-plperl-server
[4]: https://www.opensource.org/licenses/postgresql
[5]: https://raw.githubusercontent.com/garethflowers/docker-postgres-plperl/master/LICENSE
