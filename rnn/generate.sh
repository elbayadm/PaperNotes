#!/bin/bash
source ../commands.sh
cp -rf rnn.md.head rnn.md
UpdateTime=`date '+%d/%m/%Y_%H:%M:%S'`
echo "<center> Update: $UpdateTime</center>"$'\n' >> rnn.md
echo "  	" >> rnn.md

echo "  	" >> rnn.md
rm -rf *.html
rm -rf *.txt

build_section "rnn" "basics" "Basics"
build_section "rnn" "regularization" "Regularization"
build_section "rnn" "improvements" "Improvements"

md2html rnn.md rnn.html
