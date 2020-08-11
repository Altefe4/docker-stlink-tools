FROM altefe4/docker-mbed-cli-gcc-arm
MAINTAINER Rodrigo Pérez Antel I+D <rgperez@antel.com.uy>

ENV GCC_ARM_PATH /usr/bin

WORKDIR /mbed
VOLUME /mbed

# force mbed cli into installing missing python libs and toolchain
RUN cd /tmp && mbed new tmp0 && cd tmp0 && mbed compile >/dev/null 2>&1; cd .. && rm -r /tmp/tmp0 ; \
    mbed config --global toolchain gcc_arm

ENTRYPOINT [ "/usr/local/bin/mbed" ]

