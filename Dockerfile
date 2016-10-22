FROM ubuntu:16.04
MAINTAINER Dmitry Veselov <d.a.veselov@yandex.ru>

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:ubuntu-lxc/lxd-stable
RUN add-apt-repository -y ppa:libreoffice/ppa 
RUN apt-get update
RUN apt-get install -y golang git
RUN apt-get install -y libreoffice libreofficekit-dev

ENV GOPATH /go

RUN mkdir /go
ADD . /go/src/github.com/docsbox/go-libreofficekit
WORKDIR /go/src/github.com/docsbox/go-libreofficekit
RUN go get github.com/mattn/goveralls
