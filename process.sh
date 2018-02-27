#!/usr/bin/env bash
NOTESDIR="/home/maha/work/Bibliography/PapisDir/pdfs"
RAWGITPATH="https://rawgit.com/elbayadm/PaperNotes/master/notes"

md2html () {
pandoc $1 -t html -F pandoc-mermaid -s -o $2 --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML --css pandoc.css
}

build_section (){
    var=1
    for f in `ls $NOTESDIR/$1/*/notes.md 2>/dev/null | sort -r`;
    do
        echo 'Source notes file' $f
        dir=$(dirname "${f}")
        shortdir=${dir##*[/|\\]}
        echo "Short dir:" $shortdir
        html_filename="$PWD/$shortdir.html"
        title=$(cat $dir/infos.yaml| grep title | cut -f2 -d:)
        echo 'Title:' $title
        #echo $data
        md_str="$var. [$title]($RAWGITPATH/$1/$shortdir.html) "$'\n'
        #echo $md_str
        echo "Processing " $title
        md2html $f $html_filename
        var=$((var+1))
        echo $md_str >> $1.md
    done
}


for f in $(ls notes);
do
    echo "Folder" $f
    main_md='notes/'$f/$f.md
    cp -rf $main_md.head $main_md
    UpdateTime=`date '+%d/%m/%Y_%H:%M:%S'`
    echo "<center> Update: $UpdateTime</center>"$'\n' >> $main_md
    echo "  	" >> $main_md
    rm -rf notes/$f/*.html
    rm -rf notes/$f/*.txt
    build_section $f
    md2html $main_md notes/$f/index.html

done


