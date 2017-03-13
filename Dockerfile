FROM alpine:edge
MAINTAINER cam.daniel@gmail.com

# Basic dependencies
RUN apk -U add --no-cache tzdata git curl wget perl perl-dev libressl libressl-dev make gcc libc-dev zlib-dev

# Extras
RUN apk add --no-cache postgresql-dev unzip

# Tidy up
RUN rm /var/cache/apk/*

RUN curl -L https://cpanmin.us/ -o /usr/local/bin/cpanm && \
    chmod +x /usr/local/bin/cpanm
RUN cpanm -i Carton

CMD ash
