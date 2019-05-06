#!/bin/bash
n=$((RANDOM%4))
hunts=0
feasts=0
c=0
echo "stuff"
while [ $c -lt $n ]; do
#for (( c=0; c<$n; c++ ))
#do  
    echo "in loop"
    r=$((RANDOM%2))
    if [ $r = 1 ]
    then
        echo "hunting"
        echo "hunting..." > ${OUTPUT_DIR}/hunt$c.txt
        hunts=$(( hunts + 1 ))
    else
        echo "feasting"
        echo "feasting..." > ${OUTPUT_DIR}/feast$c.txt
        feasts=$(( feasts + 1 ))
    fi
    c=$(( c + 1 ))
done

echo {\"HUNTS\": ${hunts},\"FEASTS\": ${feasts}, \"MOUSE_NUMBER\": \"${INCOMING_MOUSE_NUMBER}\"} > ${OUTPUT_DIR}/seed.outputs.json
