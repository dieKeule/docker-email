FROM phusion/baseimage
MAINTAINER Michael Koehlmeier <michael.koehlmeier@setadesign.net>
RUN apt-get update && apt-get install -y postfix
RUN apt-get install -y dovecot-imapd dovecot-pop3d
