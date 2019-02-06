#!/usr/bin/env bash

FILES=$(find $(pwd) -type f ! -path '*/Makefile' ! -path '*/*.sh')
BCK_DIR='.ORIG'

for file in $FILES
do
    file_name=$(basename $file)
    orig_file="${HOME}/${file_name}" 

    if [ -f "${orig_file}" ]; then
        echo "File ${file_name} exists in home dir"
        if ! [ -d "$BCK_DIR" ]; then 
            mkdir $BCK_DIR
        fi
        mv $orig_file $BCK_DIR
    fi

    ls -s $file ${HOME}/
done
