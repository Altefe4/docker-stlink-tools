FROM python:3.7-alpine
MAINTAINER Rodrigo Pérez Antel I+D <rgperez@antel.com.uy>

RUN apk add --no-cache git \
	mercurial \
	gcc \
	musl-dev \
	libffi-dev \
	openssl-dev \
	libxml2-dev \
	cargo 

#Add testing repo from ALPINE
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk add --no-cache binutils-arm-none-eabi \
	gcc-arm-none-eabi \
	avr-libc \
	newlib-arm-none-eabi

RUN pip install cython mbed-cli

ENV GCC_ARM_PATH /usr/bin

WORKDIR /mbed
VOLUME /mbed

ENTRYPOINT [ "/usr/local/bin/mbed" ]

