#!/bin/bash
procenat=$(cat /sys/class/power_supply/BAT0/capacity)
struja=$(cat /sys/class/power_supply/AC/online)

if [ $struja -eq 1 ]; then
    #ZELENO
    izlaz="^c#33FF00^$procenat%^d^" 
else
    if [ $procenat -gt 20 ]; then
        #NORMALNO
        izlaz="$procenat%"
    else
        if [ $procenat -gt 10 ]; then
            #ZUTO
            izlaz="^b#FFC300^^c#000000^$procenat%^d^"
        else
            #CRVENO
            izlaz="^b#FF0000^^c#FFFFFF^$procenat%^d^"
        fi
    fi    
fi

echo $izlaz
