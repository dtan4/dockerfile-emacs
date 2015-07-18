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
    apt-get autoremove -y mailx libncurses5-dev texinfo liblockfile-dev librsvg2-dev libgif-dev libtiff5-dev xaw3dg-dev libpng-dev libjpeg-dev libm17n-dev libotf-dev libgpm-dev libdbus-1-dev autoconf automake autotools-dev dpkg-dev quilt debhelper libxaw7-dev sharutils imagemagick libgtk-3-dev libgnutls-dev libxml2-dev libselinux1-dev libmagick++-dev libgconf2-dev libasound2-dev wget && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /home/app
CMD ["emacs", "--version"]
