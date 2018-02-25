#!/bin/bash
cp -rf nlp.md.head nlp.md
UpdateTime=`date '+%d/%m/%Y_%H:%M:%S'`
echo "<center> Update: $UpdateTime</center>"$'\n' >> nlp.md
echo "  	" >> nlp.md

echo "  	" >> nlp.md
rm -rf *.html
rm -rf *.txt

md2html () {
pandoc $1 -t html -F pandoc-mermaid -s -o $2 --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML --css pandoc.css
}
build_section (){
    echo "  	" >> $1.md
    echo "# "$3"  	" >> $1.md
    var=1
    for f in `ls ~/Dropbox/PaperNotes/$1/$2/*.md | sort -r`;
    do
        md_filename=${f##*[/|\\]}
        html_filename="$PWD/$md_filename.html"
        md_filename_space="${md_filename%%.*}"
        md_filename_space=${md_filename_space//_/ }
        data=${md_filename:0:8}
        md_str="$var. $data | [${md_filename_space:8}](https://rawgit.com/elbayadm/PaperNotes/master/$1/$md_filename.html) "$'\n'
        echo "Processing for file - $html_filename"
        md2html $f $html_filename
        var=$((var+1))
        echo $md_str >> $1.md
    done
}

build_section "nlp" "embeddings" "Word & Sentence embeddings"
build_section "nlp" "modeling" "Modeling"
build_section "nlp" "optimization" "Improvements & Optimization"
build_section "nlp" "tasks" "Taks & applications"

md2html nlp.md nlp.html
