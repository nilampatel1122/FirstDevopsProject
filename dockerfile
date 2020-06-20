FROM ubuntu:latest

MAINTAINER nilamdevops

WORKDIR /usr/apps/hello-docker/

RUN apt-get -y update

RUN apt-get install -y nodejs

RUN apt-get install -y npm

RUN npm install -g http-server

RUN docker login -u nilamdevops -p Lvurahul1

ADD . /usr/apps/hello-docker

CMD ["http-server","-s"]
