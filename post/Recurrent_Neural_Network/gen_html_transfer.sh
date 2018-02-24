#!/bin/bash
cp -rf Recurrent_Neural_Network.md.head Recurrent_Neural_Network.md
UpdateTime=`date '+%d/%m/%Y_%H:%M:%S'`
echo "<center> Update: $UpdateTime</center>"$'\n' >> Recurrent_Neural_Network.md
echo "  	" >> Recurrent_Neural_Network.md

echo "  	" >> Recurrent_Neural_Network.md
#echo "|   |   |   |" >> Convolutional_Neural_Networks.md
#echo "|---:|---|---|" >> Convolutional_Neural_Networks.md
rm -rf *.html
rm -rf *.txt
#################################################################################################
##	BASIC
#################################################################################################
echo "  	" >> Recurrent_Neural_Network.md
echo "# Baisc  	" >> Recurrent_Neural_Network.md
var=1
for f in `ls ~/Dropbox/blog/github.io/recurrent-neural-networks/basic_components/*.md | sort -r`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str="| $var. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/PaperNotes/master/post/convolutional-neural-networks/$md_filename.html) |"
	md_str="$var. $data | [${md_filename_space:8}](https://rawgit.com/gujiuxiang/PaperNotes/master/post/Recurrent_Neural_Network/$md_filename.html) "$'\n'
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> Recurrent_Neural_Network.md
done
#################################################################################################
##	Improvements
#################################################################################################
echo "  	" >> Recurrent_Neural_Network.md
echo "# Improvements  	" >> Recurrent_Neural_Network.md
var=1
for f in `ls ~/Dropbox/blog/github.io/recurrent-neural-networks/improvements/*.md | sort -r`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str="| $var. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/PaperNotes/master/post/convolutional-neural-networks/$md_filename.html) |"
	md_str="$var. $data | [${md_filename_space:8}](https://rawgit.com/gujiuxiang/PaperNotes/master/post/Recurrent_Neural_Network/$md_filename.html) "$'\n'
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> Recurrent_Neural_Network.md
done
#################################################################################################
##	caption
#################################################################################################
echo "  	" >> Recurrent_Neural_Network.md
echo "# Applications  	" >> Recurrent_Neural_Network.md
var=1
for f in `ls ~/Dropbox/blog/github.io/recurrent-neural-networks/applications/*.md | sort -r`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str="| $var. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/PaperNotes/master/post/convolutional-neural-networks/$md_filename.html) |"
	md_str="$var. $data | [${md_filename_space:8}](https://rawgit.com/gujiuxiang/PaperNotes/master/post/Recurrent_Neural_Network/$md_filename.html) "$'\n'
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> Recurrent_Neural_Network.md
done
pandoc Recurrent_Neural_Network.md -t html -F pandoc-mermaid -s -o Recurrent_Neural_Network.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
#cp Recurrent_Neural_Network.md ~/github/gujiuxiang.github.io/_posts/2016-07-01-recent-advances-in-RNN.md
