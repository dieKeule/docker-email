FROM phusion/baseimage
MAINTAINER Michael Koehlmeier <michael.koehlmeier@setadesign.net>
RUN apt-get update && apt-get install -y postfix
RUN apt-get install -y dovecot-imapd dovecot-pop3d
RUN apt-get install -y libsasl2-2 
RUN apt-get install -y sasl2-bin 
RUN apt-get install -y libsasl2-modules
RUN mkdir /etc/service/postfix
RUN mkdir /etc/service/dovecot
RUN mkdir /etc/service/saslauthd
RUN mkdir -p /var/spool/postfix/var/run/saslauthd
RUN ln -s /etc/default/saslauthd /etc/saslauthd
RUN dpkg-statoverride --force --update --add root sasl 755 /var/spool/postfix/var/run/saslauthd
ADD postfix.sh /etc/service/postfix/run
ADD dovecot.sh /etc/service/dovecot/run
ADD saslauthd.sh /etc/service/saslauthd/run