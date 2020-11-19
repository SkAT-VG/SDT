FROM ubuntu:19.10

RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install doxygen
RUN apt-get -y install git
RUN apt-get -y install rsync

RUN apt-get -y install wget

ENV DEBIAN_FRONTEND=noninteractive
RUN echo 'deb http://download.opensuse.org/repositories/home:/aggraef/xUbuntu_19.10/ /' | tee /etc/apt/sources.list.d/home:aggraef.list
RUN wget -nv https://download.opensuse.org/repositories/home:aggraef/xUbuntu_19.10/Release.key -O "/etc/apt/trusted.gpg.d/home:aggraef.asc"
RUN apt-get update

RUN apt-get -y install make
RUN apt-get -y install doxygen-latex
RUN apt-get -y install latexmk

RUN apt-get -y install python3-pip
RUN python3 -m pip install sphinx sphinx-rtd-theme
