#!/bin/bash 

DAEMON=/usr/sbin/saslauthd
MECHSTRING = '-a shadow'

$DAEMON $MECHSTRING