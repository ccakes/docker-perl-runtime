# docker-perl-alpine

A simple base Perl image using `alpine:edge` with minimum required compiler tools for building modules.

Image also contains [Carton](http://metacpan.org/pod/Carton) for app dependency management and [Data::Dumper::Simple](http://metacpan.org/pod/Data::Dumper::Simple) so I don't have to install it under every project.

Also included is `postgres-libs` for DBD::Pg

### Usage

```
docker pull ccakes/perl-alpine
docker run -it --rm -v $(pwd):/app -w /app ccakes/perl-alpine carton exec -- perl my_app.pl
```
