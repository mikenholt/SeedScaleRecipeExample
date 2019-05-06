#!/bin/bash

echo "TEST DOES THIS WORK"
echo ${INPUT_FILE}
[ -f ${INPUT_FILE} ] && echo "Found" || echo "Not found"
cat ${INPUT_FILE}
#echo ${OUTPUT_DIR}/renamed.txt
MOUSE_NUMBER=$(echo ${INPUT_FILE} | cut -d '-' -f 2 | cut -d '.'  -f 1)
mkdir ${OUTPUT_DIR}/${MOUSE_NUMBER}
echo $MOUSE_NUMBER
if [ $((RANDOM%2)) ]
then
    echo {\"CAUGHT\": true, \"MOUSE_NUMBER\":\"${MOUSE_NUMBER}\"} > ${OUTPUT_DIR}/seed.outputs.json
else
    echo {\"CAUGHT\": false,  \"MOUSE_NUMBER\":\"${MOUSE_NUMBER}\"} > ${OUTPUT_DIR}/seed.outputs.json
fi

#cp ${INPUT_FILE} ${OUTPUT_DIR}/mouse-${RANDOM}.txt