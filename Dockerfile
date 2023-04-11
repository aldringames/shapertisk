FROM scratch

ADD apertis.tar.gz /

ENV DEBIAN_FRONTEND=noninteractive

RUN busybox
