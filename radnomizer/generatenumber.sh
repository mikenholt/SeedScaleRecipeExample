if [ $((RANDOM%2)) == 1 ]
then
    echo "true"
    echo {\"RESULT\": true} > ${OUTPUT_DIR}/seed.outputs.json
else
    echo "false"
    echo {\"RESULT\": false} > ${OUTPUT_DIR}/seed.outputs.json
fi