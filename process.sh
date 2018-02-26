#!/usr/bin/env bash
homedir=$(pwd)
for f in $(ls notes);
do
    cd notes/$f
    ./generate.sh
    cd $homedir
done

