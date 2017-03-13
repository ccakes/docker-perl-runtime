# docker-perl-runtime

A simple base Perl image using `alpine:edge` with minimum required compiler tools for building modules.

Image also contains [Carton](http://metacpan.org/pod/Carton) for app dependency management.

Also included is `postgres-libs` for DBD::Pg

### Usage

```
docker pull ccakes/perl-runtime
docker run -it --rm -v $(pwd):/app -w /app ccakes/perl-runtime carton exec -- perl my_app.pl
```
