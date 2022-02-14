#!/bin/bash
status=$(pulseaudio-ctl full-status)
broj1=`echo $status | cut -c 1-1`
broj2=`echo $status | cut -c 2-2`
broj3=`echo $status | cut -c 3-3`
if [ $broj2 != " " ]; then
    broj="$broj1$broj2"
    if [ $broj3 = "0" ]; then
        broj="$broj$broj3"
    fi
else
    broj=$broj1
fi

echo "$broj%"
