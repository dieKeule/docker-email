#!/bin/bash 

DAEMON=/usr/sbin/saslauthd
MECHSTRING = '-a shadow -c -m /var/spool/postfix/var/run/saslauthd'

$DAEMON $MECHSTRING