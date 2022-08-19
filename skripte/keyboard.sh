#!/bin/bash

simbol=`xkblayout-state print "%s"`
varijanta=`xkblayout-state print "%e"`
boja="^d^"

if [ $simbol = "rs" ]; then
    boja="^b#00AAFF^^c#000000^"
fi

echo $boja$simbol $varijanta^d^
