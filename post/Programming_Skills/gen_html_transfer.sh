#!/bin/bash
cp -rf Programming_Skills.md.head Programming_Skills.md
UpdateTime=`date '+%d/%m/%Y_%H:%M:%S'`
echo "<center> Update: $UpdateTime</center></br></br>" >> Programming_Skills.md
echo "  	" >> Programming_Skills.md

echo "  	" >> Programming_Skills.md
#echo "|   |   |   |" >> Convolutional_Neural_Networks.md
#echo "|---:|---|---|" >> Convolutional_Neural_Networks.md
rm -rf *.html
rm -rf *.txt
var=1
for f in `ls ~/Dropbox/blog/github.io/computer-programming/*.md | sort -r`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str="| *$var*. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/PaperNotes/master/post/convolutional-neural-networks/$md_filename.html) |"
	md_str="*$var*. [${md_filename_space:8} . $data](https://rawgit.com/gujiuxiang/PaperNotes/master/post/computer-programming/$md_filename.html) </br>"
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> Programming_Skills.md
done

pandoc Programming_Skills.md -t html -F pandoc-mermaid -s -o Programming_Skills.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
#cp Convolutional_Neural_Networks.md ~/github/gujiuxiang.github.io/_posts/2015-06-14-Convolutional_Neural_Networks.md
