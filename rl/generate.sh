#!/bin/bash
source ../commands.sh
cp -rf rl.md.head rl.md
UpdateTime=`date '+%d/%m/%Y_%H:%M:%S'`
echo "<center> Update: $UpdateTime</center>"$'\n' >> rl.md
echo "  	" >> rl.md

echo "  	" >> rl.md
rm -rf *.html
rm -rf *.txt

build_section "rl" "basic" "Basics"
build_section "rl" "sequence_models" "Sequence prediction models"
md2html rl.md rl.html
