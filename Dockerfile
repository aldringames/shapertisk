FROM scratch

ADD apertis.tar.gz /

ENV DEBIAN_FRONTEND=noninteractive

RUN echo "deb https://repositories.apertis.org/apertis/ v2022 development sdk target" > /etc/apt/sources.list && \
  for repo in security updates; do \ 
    echo "deb https://repositories.apertis.org/apertis/ v2022-$repo development sdk target" >> /etc/apt/sources.list; \
  done

RUN apt-get -qqy update && \
  apt-get -qqy upgrade
