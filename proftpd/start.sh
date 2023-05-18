#!/bin/sh

CURDIR=`cd $(dirname $0);pwd`

export LD_LIBRARY_PATH=$CURDIR/lib:$LD_LIBRARY_PATH 

nohup sbin/proftpd -c $CURDIR/etc/proftpd.conf -n &
