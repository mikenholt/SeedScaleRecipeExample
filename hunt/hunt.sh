#!/bin/bash
n=$((RANDOM%4))
hunts=0
feasts=0
for (( c=0; c<$n; c++ ))
do  
    if $((RANDOM%2)):
        "hunting..." > ${OUTPUT_DIR}/hunt$c.txt
        hunts=hunts+1
    else
        "feasting..." > ${OUTPUT_DIR}/feast$c.txt
        feasts=feasts+1
done
echo {\"hunts\": ${hunts},\"feasts\": ${feasts}, \"mouse\":${mouse}} > ${OUTPUT_DIR}/seed.outputs.json
