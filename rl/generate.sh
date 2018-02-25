#!/bin/bash
cp -rf rl.md.head rl.md
UpdateTime=`date '+%d/%m/%Y_%H:%M:%S'`
echo "<center> Update: $UpdateTime</center>"$'\n' >> rl.md
echo "  	" >> rl.md

echo "  	" >> rl.md
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
build_section "rl" "basic" "Basics"
build_section "rl" "sequence_models" "Sequence prediction models"
md2html rl.md rl.html
