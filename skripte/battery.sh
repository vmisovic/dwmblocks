#!/bin/bash
procenat=$(cat /sys/class/power_supply/BAT0/capacity)
struja=$(cat /sys/class/power_supply/AC/online)
boja="^d^"

if [ "$procenat" -ge 100 ]; then
	procenat=100;
fi

if [ $struja -eq 1 ]; then
    #ZELENO
    boja="^c#33FF00^" 
else
    if [ $procenat -le 10 ]; then
        #CRVENO
        boja="^b#FF0000^^c#FFFFFF^"
    elif [ $procenat -le 20 ]; then
        #ZUTO
        boja="^b#FFC300^^c#000000^"
    fi   
fi

echo $boja$procenat%^d^
