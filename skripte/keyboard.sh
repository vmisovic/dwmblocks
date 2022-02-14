#!/bin/bash

simbol=`xkblayout-state print "%s"`
varijanta=`xkblayout-state print "%e"`

if [ $simbol = "us" ]; then
    izlaz="$simbol $varijanta"
else
    izlaz="^b#00AAFF^^c#000000^$simbol $varijanta^d^"
fi

echo $izlaz
