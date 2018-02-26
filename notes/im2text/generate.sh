#!/bin/bash
source ../../commands.sh
cp -rf im2text.md.head im2text.md
UpdateTime=`date '+%d/%m/%Y_%H:%M:%S'`
echo "<center> Update: $UpdateTime</center>"$'\n' >> im2text.md
echo "  	" >> im2text.md

echo "  	" >> im2text.md
rm -rf *.html
rm -rf *.txt

build_section "im2text" "image" "Image captioning"
build_section "im2text" "video" "Video captioning"
build_section "im2text" "vqa" "VQA"

md2html im2text.md im2text.html
