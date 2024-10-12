#!/bin/bash

sleep 1m

cd /home/cirrus

com ()
{
    tar --use-compress-program="pigz -k -$2 " -cf $1.tar.gz $1
}

time com ccache 1
