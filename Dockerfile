FROM debian
MAINTAINER Satoshi Amemiya

ADD http://nodejs.org/dist/v0.11.10/node-v0.11.10-linux-x64.tar.gz /
RUN tar xf node-v0.11.10-linux-x64.tar.gz
RUN cd node-v0.11.10-linux-x64 && cp -r bin include lib share /usr
RUN rm -rf node-v0.11.10-linux-x64 node-v0.11.10-linux-x64.tar.gz
CMD node
