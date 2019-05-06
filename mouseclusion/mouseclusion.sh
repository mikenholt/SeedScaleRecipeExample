#!/bin/bash

if ${FEASTS}=0
    "The mouse got away!" > ${OUTPUT_DIR}/${MOUSE_NUMBER}/gotaway.txt
else
    "The cat is well satisfied and is taking a nap." > ${OUTPUT_DIR}/${MOUSE_NUMBER}/catsfull.txt
fi
