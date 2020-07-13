FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:git-core/ppa
RUN apt-get update

RUN apt-get -y install git 
RUN apt-get -y install ssh
RUN apt-get -y install build-essential
RUN apt-get -y install mingw-w64
RUN apt-get -y install puredata-dev