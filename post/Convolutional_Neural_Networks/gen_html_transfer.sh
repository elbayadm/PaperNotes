#!/bin/bash
cp -rf Convolutional_Neural_Networks.md.head Convolutional_Neural_Networks.md
UpdateTime=`date '+%d/%m/%Y_%H:%M:%S'`
echo "<center> Update: $UpdateTime</center>"$'\n' >> Convolutional_Neural_Networks.md
echo "  	" >> Convolutional_Neural_Networks.md

echo "  	" >> Convolutional_Neural_Networks.md
#echo "|   |   |   |" >> Convolutional_Neural_Networks.md
#echo "|---:|---|---|" >> Convolutional_Neural_Networks.md
rm -rf *.html
rm -rf *.txt
#################################################################################################
##	BASIC
#################################################################################################
echo "  	" >> Convolutional_Neural_Networks.md
echo "# Baisc  	" >> Convolutional_Neural_Networks.md
var=1
for f in `ls ~/Dropbox/blog/github.io/convolutional-neural-networks/basic_components/*.md | sort -r`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str="| $var. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/PaperNotes/master/post/convolutional-neural-networks/$md_filename.html) |"
	md_str="$var. $data | [${md_filename_space:8}](https://rawgit.com/gujiuxiang/PaperNotes/master/post/Convolutional_Neural_Networks/$md_filename.html) "$'\n'
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> Convolutional_Neural_Networks.md
done
#################################################################################################
##	improvements
#################################################################################################
echo "  	" >> Convolutional_Neural_Networks.md
echo "# Improvements  	" >> Convolutional_Neural_Networks.md
var=1
for f in `ls ~/Dropbox/blog/github.io/convolutional-neural-networks/improvements/*.md | sort -r`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str="| $var. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/PaperNotes/master/post/convolutional-neural-networks/$md_filename.html) |"
	md_str="$var. $data | [${md_filename_space:8}](https://rawgit.com/gujiuxiang/PaperNotes/master/post/Convolutional_Neural_Networks/$md_filename.html) "$'\n'
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> Convolutional_Neural_Networks.md
done
#################################################################################################
##	fast_processing
#################################################################################################
echo "  	" >> Convolutional_Neural_Networks.md
echo "# Fast processing  	" >> Convolutional_Neural_Networks.md
var=1
for f in `ls ~/Dropbox/blog/github.io/convolutional-neural-networks/fast_processing/*.md | sort -r`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str="| $var. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/PaperNotes/master/post/convolutional-neural-networks/$md_filename.html) |"
	md_str="$var. $data | [${md_filename_space:8}](https://rawgit.com/gujiuxiang/PaperNotes/master/post/Convolutional_Neural_Networks/$md_filename.html) "$'\n'
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> Convolutional_Neural_Networks.md
done

echo "  	" >> Convolutional_Neural_Networks.md
echo "# Applications  	" >> Convolutional_Neural_Networks.md
var=1
for f in `ls ~/Dropbox/blog/github.io/convolutional-neural-networks/applications/*.md | sort -r`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str="| $var. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/PaperNotes/master/post/convolutional-neural-networks/$md_filename.html) |"
	md_str="$var. $data | [${md_filename_space:8}](https://rawgit.com/gujiuxiang/PaperNotes/master/post/Convolutional_Neural_Networks/$md_filename.html) "$'\n'
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> Convolutional_Neural_Networks.md
done
#cp -rf Convolutional_Neural_Networks.md ~/github/gujiuxiang.github.io/_posts/2015-12-07-recent-advances-in-CNN.md
pandoc Convolutional_Neural_Networks.md -t html -F pandoc-mermaid -s -o Convolutional_Neural_Networks.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
