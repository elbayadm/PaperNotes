#!/bin/bash
cp -rf Reinforcement_Learning.md.head Reinforcement_Learning.md
UpdateTime=`date '+%d/%m/%Y_%H:%M:%S'`
echo "<center> Update: $UpdateTime</center>"$'\n' >> Reinforcement_Learning.md
echo "  	" >> Reinforcement_Learning.md

echo "  	" >> Reinforcement_Learning.md
#echo "|   |   |   |" >> Convolutional_Neural_Networks.md
#echo "|---:|---|---|" >> Convolutional_Neural_Networks.md
rm -rf *.html
rm -rf *.txt
var=1
for f in `ls ~/Dropbox/blog/github.io/reinforcement-learning/*.md | sort -r`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str="| *$var*. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/gujiuxiang.github.io/master/blog/post/convolutional-neural-networks/$md_filename.html) |"
	md_str="$var. $data | [${md_filename_space:8}](https://rawgit.com/gujiuxiang/PaperNotes/master/post/Reinforcement_Learning/$md_filename.html) "$'\n'
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> Reinforcement_Learning.md
done

pandoc Reinforcement_Learning.md -t html -F pandoc-mermaid -s -o Reinforcement_Learning.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
#cp Reinforcement_Learning.md ~/github/gujiuxiang.github.io/_posts/2017-03-01-recent-advances-in-RL.md
