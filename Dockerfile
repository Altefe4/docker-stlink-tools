FROM altefe4/docker-mbed-cli-source
MAINTAINER Rodrigo Pérez Antel I+D <rgperez@antel.com.uy>

WORKDIR /mbed
VOLUME /mbed

RUN apk add minicom
RUN apk add stlink --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
