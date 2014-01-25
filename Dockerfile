FROM debian
MAINTAINER Satoshi Amemiya

RUN echo 'deb http://ftp.debian.org/debian wheezy-backports main' >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y nodejs curl
RUN ln -s /usr/bin/nodejs /usr/bin/node
ADD https://npmjs.org/install.sh /
RUN clean=y sh install.sh
RUN rm install.sh
CMD node
