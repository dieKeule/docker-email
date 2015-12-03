FROM phusion/baseimage
MAINTAINER Michael Koehlmeier <michael.koehlmeier@setadesign.net>
RUN apt-get update && apt-get install -y postfix
RUN apt-get install -y dovecot-imapd dovecot-pop3d
RUN mkdir /etc/service/postfix
RUN mkdir /etc/service/dovecot
ADD postfix.sh /etc/service/postfix/run
ADD dovecot.sh /etc/service/dovecot/run