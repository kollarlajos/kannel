FROM ubuntu:18.04

MAINTAINER Kollár Lajos, lajos.kollar@innovitech.hu

RUN apt-get -yq update
RUN apt-get -yq dist-upgrade
RUN apt-get -yq --no-install-recommends install kannel kannel-extras

COPY default.kannel.conf /etc/kannel/kannel.conf
COPY default.kannel /etc/default/kannel

RUN chmod 644 /etc/kannel/kannel.conf
RUN chmod 644 /etc/default/kannel

EXPOSE 13013 13013 13000 13000 13001 13001 13002 13002

CMD service kannel start && tail -F /var/log/kannel/smsbox.log
