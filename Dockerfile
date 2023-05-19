FROM scratch

ADD apertis.tar.gz /

ENV DEBIAN_FRONTEND=noninteractive

RUN echo "deb https://repositories.apertis.org/apertis/ v2023 development sdk target" > /etc/apt/sources.list && \
  for repo in security updates; do \ 
    echo "deb https://repositories.apertis.org/apertis/ v2023-$repo development sdk target" >> /etc/apt/sources.list; \
  done

RUN apt-get -qqy update && \
  apt-get -qqy upgrade && \
  apt-get -qqy install \
    curl \
    unzip \
    zip \
    git-lfs \
    bash

CMD ["bin/bash"]

RUN curl https://get.sdkman.io | bash

RUN echo "Shapertisk"
