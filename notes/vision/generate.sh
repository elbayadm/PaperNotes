#!/bin/bash
source ../../commands.sh
cp -rf vision.md.head vision.md
UpdateTime=`date '+%d/%m/%Y_%H:%M:%S'`
echo "<center> Update: $UpdateTime</center>"$'\n' >> vision.md
echo "  	" >> vision.md

echo "  	" >> vision.md
rm -rf *.html
rm -rf *.txt

build_section "vision" "basic" "Basics"
build_section "vision" "regularization" "Regularization"
build_section "vision" "applications" "Applications"
md2html vision.md vision.html
