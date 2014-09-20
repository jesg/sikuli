
FROM debian:wheezy

MAINTAINER Jason Gowan <gowanjason@gmail.com>

RUN apt-get -y update

RUN apt-get -y install x11vnc libsikuli-script-java tightvncserver

ADD ./xstartup /

RUN mkdir /root/.vnc
RUN x11vnc -storepasswd secret /root/.vnc/passwd
RUN \cp -f ./xstartup /root/.vnc/.
RUN chmod -v +x /root/.vnc/xstartup

