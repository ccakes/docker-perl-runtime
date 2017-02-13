FROM alpine:edge
MAINTAINER cam.daniel@gmail.com

# Basic dependencies
RUN apk -U add --no-cache \
  tzdata git wget perl perl-dev libressl libressl-dev build-base

# Extras
RUN apk add postgresql-dev

RUN curl -L https://cpanmin.us/ -o /usr/local/bin/cpanm && \
    chmod +x /usr/local/bin/cpanm
RUN cpanm -i Carton

CMD ash
