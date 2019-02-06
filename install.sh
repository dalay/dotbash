#!/usr/bin/env bash

FILES=$(find $(pwd) -maxdepth 1 -type f ! -path '*/Makefile' ! -path '*/*.sh' ! -path '*/.git*')
BCK_DIR='.ORIG'

for file in $FILES
do
    file_name=$(basename $file)
    orig_file="${HOME}/${file_name}" 

    if [ -f "${orig_file}" ]; then
        if ! [ -d "$BCK_DIR" ]; then 
            mkdir $BCK_DIR
        fi
        mv $orig_file $BCK_DIR
    fi

    ln -s $file ${HOME}/
done

source ${HOME}/.bashrc
