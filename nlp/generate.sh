#!/bin/bash
source ../commands.sh
cp -rf nlp.md.head nlp.md
UpdateTime=`date '+%d/%m/%Y_%H:%M:%S'`
echo "<center> Update: $UpdateTime</center>"$'\n' >> nlp.md
echo "  	" >> nlp.md

echo "  	" >> nlp.md
rm -rf *.html
rm -rf *.txt

build_section "nlp" "embeddings" "Word & Sentence embeddings"
build_section "nlp" "modeling" "Modeling"
build_section "nlp" "optimization" "Improvements & Optimization"
build_section "nlp" "tasks" "Taks & applications"

md2html nlp.md nlp.html
