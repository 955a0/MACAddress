#!/usr/local/bin/bash

FILE="./macraw/oui.csv"

while read line || [ -n "${line}" ];
do
    tests=(${line//,/ })

    vcode="${tests[1]}"
    ofile="./macdb/${vcode}.txt"
    echo $line > $ofile
done < "$FILE" 

FILE="./macraw/oui36.csv"

while read line || [ -n "${line}" ];
do
    tests=(${line//,/ })

    vcode="${tests[1]}"
    ofile="./macdb/${vcode}.txt"
done < "$FILE"

FILE="./macraw/cid.csv"

while read line || [ -n "${line}" ];
do
    tests=(${line//,/ })

    vcode="${tests[1]}"
    ofile="./macdb/${vcode}.txt"
    echo $line > $ofile
done < "$FILE"

FILE="./macraw/mam.csv"

while read line || [ -n "${line}" ];
do
    tests=(${line//,/ })

    vcode="${tests[1]}"
    ofile="./macdb/${vcode}.txt"
    echo $line > $ofile
done < "$FILE"
