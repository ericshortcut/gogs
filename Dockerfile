FROM i686/ubuntu

MAINTAINER André König <andre.koenig@posteo.de>

WORKDIR /root

RUN apt-get update && \
    apt-get install -y unzip git-core openssh-server

ADD http://gobuild.io/github.com/gogits/gogs/v0.4.2/linux/386 /tmp/gogs-v0.4.2.zip

WORKDIR /tmp
RUN unzip gogs-v0.4.2.zip -d /opt/gogs/ && rm gogs-v0.4.2.zip

ADD ./app.ini /opt/gogs/custom/conf/app.ini

RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
RUN sed -ri 's/#UsePAM no/UsePAM no/g' /etc/ssh/sshd_config

EXPOSE 50000
EXPOSE 22

CMD /opt/gogs/start.sh
