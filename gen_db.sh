#!/usr/local/bin/bash

OUTDIR="/home/x955/www/nwapp/macal/"

rm -rf "../macdb"
mkdir "../macdb"

FILE="./oui.csv"
while read line || [ -n "${line}" ];
do
    tests=(${line//,/ })

    vcode="${tests[1]}"
    ofile="../macdb/${vcode}.txt"
    echo $line > $ofile
done < "$FILE" 

FILE="./oui36.csv"

while read line || [ -n "${line}" ];
do
    tests=(${line//,/ })

    vcode="${tests[1]}"
    ofile="../macdb/${vcode}.txt"
done < "$FILE"

FILE="./cid.csv"

while read line || [ -n "${line}" ];
do
    tests=(${line//,/ })

    vcode="${tests[1]}"
    ofile="../macdb//${vcode}.txt"
    echo $line > $ofile
done < "$FILE"

FILE="./mam.csv"

while read line || [ -n "${line}" ];
do
    tests=(${line//,/ })

    vcode="${tests[1]}"
    ofile="../macdb/${vcode}.txt"
    echo $line > $ofile
done < "$FILE"


TIMESTAMP=`date '+%Y%m%d%H%M.%S'`
touch -t ${TIMESTAMP} "macdb"
