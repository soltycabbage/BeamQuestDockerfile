FROM ubuntu
MAINTAINER nise_nabe <nise.nabe@gmail.com>

RUN apt-get -qq update
RUN apt-get --yes upgrade

RUN apt-get --yes install curl git-core

RUN apt-get --yes install build-essential python
RUN cd /usr/local/src \
  && git clone https://github.com/joyent/node \
  && cd node \
  && git checkout v0.10.24 \
  && ./configure --prefix=/usr/local \
  && make \
  && make install

RUN cd /usr/local/src \
  && curl -O http://download.redis.io/redis-stable.tar.gz \
  && tar xvzf redis-stable.tar.gz \
  && cd redis-stable \
  && make \
  && make install

ADD deploy.sh /root/deploy.sh
CMD bash /root/deploy.sh
