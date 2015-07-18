FROM ubuntu:14.04
MAINTAINER Daisuke Fujita (dtanshi45@gmail.com) <@dtan4>

ENV EMACS_VERSION 24.5
ENV HOME /home/app

RUN apt-get update && \
    apt-get install -y wget && \
    apt-get build-dep -y emacs24 && \
    wget -qO /tmp/emacs-$EMACS_VERSION.tar.gz http://ftp.gnu.org/gnu/emacs/emacs-$EMACS_VERSION.tar.gz && \
    cd /tmp && \
    tar zxf emacs-$EMACS_VERSION.tar.gz && \
    cd emacs-$EMACS_VERSION && \
    ./configure && \
    make && \
    make install && \
    cd ../ && \
    rm -rf emacs-$EMACS_VERSION* && \
    apt-get autoremove -y mailx texinfo autoconf automake autotools-dev dpkg-dev quilt debhelper sharutils imagemagick wget && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /home/app
CMD ["emacs", "--version"]
