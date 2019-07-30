FROM ubuntu:18.04

RUN apt update
RUN apt dist-upgrade
RUN apt install kannel kannel-extras

COPY default.kannel.conf /etc/default/kannel

EXPOSE 13013 13013 13000 13000 13001 13001 13002 13002
