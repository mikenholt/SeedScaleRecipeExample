#!/bin/bash

echo "TEST DOES THIS WORK"
echo ${INPUT_FILE}
[ -f ${INPUT_FILE} ] && echo "Found" || echo "Not found"
cat ${INPUT_FILE}
echo ${OUTPUT_DIR}/renamed.txt
if $((RANDOM%2)):
    echo {\"caught\": \"true\", \"mouse\":$(${INPUT_FILE} | cut -d '-' -f 2 | cut -d '.'  -f 1)} > ${OUTPUT_DIR}/seed.outputs.json
else
    echo {\"caught\": \"false\", \"mouse\":$(${INPUT_FILE} | cut -d '-' -f 2 | cut -d '.'  -f 1)} > ${OUTPUT_DIR}/seed.outputs.json
fi

#cp ${INPUT_FILE} ${OUTPUT_DIR}/mouse-${RANDOM}.txt