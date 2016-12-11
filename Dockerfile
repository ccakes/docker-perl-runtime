FROM alpine:edge

# Basic dependencies
RUN apk -U add git curl wget perl perl-dev libressl libressl-dev make gcc libc-dev

# Extras
RUN apk add postgresql-dev postgresql-libs

RUN curl -L https://cpanmin.us/ -o /usr/local/bin/cpanm && \
    chmod +x /usr/local/bin/cpanm
RUN cpanm -i Data::Dumper::Simple Carton

CMD ash
