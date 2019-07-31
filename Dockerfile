FROM ubuntu:18.04

RUN apt-get update
RUN apt-get dist-upgrade
RUN apt-get install kannel kannel-extras

COPY default.kannel.conf /etc/default/kannel
COPY default.kannel /etc/default/kannel

RUN service kannel restart

EXPOSE 13013 13013 13000 13000 13001 13001 13002 13002
