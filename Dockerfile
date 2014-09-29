FROM i686/ubuntu

MAINTAINER André König <andre.koenig@posteo.de>

WORKDIR /root

RUN apt-get update && \
    apt-get install -y git-core openssh-server

ADD http://gobuild3.qiniudn.com/github.com/gogits/gogs/tag-v-v0.5.2/gogs-linux-386.tar.gz /tmp/gogs-v0.5.2.tgz

WORKDIR /tmp
RUN mkdir -p /opt/gogs && tar xvfz gogs-v0.5.2.tgz --directory /opt/gogs && rm gogs-v0.5.2.tgz 

ADD ./app.ini /opt/gogs/custom/conf/app.ini

RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
RUN sed -ri 's/#UsePAM no/UsePAM no/g' /etc/ssh/sshd_config

EXPOSE 50000
EXPOSE 22

WORKDIR /opt/gogs
CMD ./scripts/start.sh
