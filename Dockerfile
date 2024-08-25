FROM openjdk:11
RUN apt-get -y update &&\
    apt-get install -y  pcscd \
        pcsc-tools \
        libpcsclite-dev \
        usbutils \
        opensc &&\
    rm -rf \
        /tmp/* \
        /var/lib/apt/lists/* \
        /var/tmp/*
ADD javacard /opt/javacard

ENV JC_HOME=/opt/javacard

ENV JC_PATH=$JC_HOME/lib/

RUN echo 'alias ll="ls -la"' >> ~/.bashrc

RUN echo '#!/bin/sh\njava -jar $JC_HOME/gp.jar "$@"'> gp && chmod +x gp && mv gp /usr/bin

#CMD service pcscd start && bash
CMD ["pcscd","-f","-i"]
