#!/bin/bash
n=$((RANDOM%4))
feasts=0
c=0
while [ $c -le $n ]; do
# for (( c=0; c<$n; c++ ))
# do  
    echo "feasting..." > ${OUTPUT_DIR}/feast$c.txt
    feasts=$(( feasts + 1 ))
    c=$(( c + 1 ))
done

echo {\"HUNTS\": 0,\"FEASTS\": ${feasts}, \"MOUSE_NUMBER\": \"${INCOMING_MOUSE_NUMBER}\"} > ${OUTPUT_DIR}/seed.outputs.json