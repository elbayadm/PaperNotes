#!/bin/bash
cp -rf book_reading.md.head book_reading.md
UpdateTime=`date '+%d/%m/%Y_%H:%M:%S'`
echo "<center> Update: $UpdateTime</center></br></br>" >> book_reading.md
echo "  	" >> book_reading.md
echo "<left>" >> book_reading.md

rm -rf *.html
rm -rf *.txt
var=1

## notes-of-convex-optimization
echo "  	" >> book_reading.md
md_filename="# Convex Optimization"
echo $md_filename >> book_reading.md
echo "  	" >> book_reading.md
#echo "|   |   |   |" >> book_reading.md
#echo "|---:|---|---|" >> book_reading.md
var=1
for f in `ls ~/Dropbox/blog/github.io/book_reading/notes-of-convex-optimization/*.md | sort -f`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	md_str="*$var*. [${md_filename_space:8} . $data](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) </br>"
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> book_reading.md
done
echo "  	" >> book_reading.md

## notes-of-cuda-by-example
md_filename="# Cuas by Example"
echo $md_filename >> book_reading.md
echo "  	" >> book_reading.md
#echo "|   |   |   |" >> book_reading.md
#echo "|---:|---|---|" >> book_reading.md
var=1
for f in `ls ~/Dropbox/blog/github.io/book_reading/notes-of-cuda-by-example/*.md | sort -f`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str=" | *$var*. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) |"
	md_str="*$var*. [${md_filename_space:8} . $data](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) </br>"
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> book_reading.md
done
echo "  	" >> book_reading.md

## notes-of-design-and-analysis-of-experiment
md_filename="# Desigan and analysis of experiment"
echo $md_filename >> book_reading.md
echo "  	" >> book_reading.md
#echo "|   |   |   |" >> book_reading.md
#echo "|---:|---|---|" >> book_reading.md
var=1
for f in `ls ~/Dropbox/blog/github.io/book_reading/notes-of-design-and-analysis-of-experiment/*.md | sort -f`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str=" | *$var*. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) |"
	md_str="*$var*. [${md_filename_space:8} . $data](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) </br>"
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> book_reading.md
done
echo "  	" >> book_reading.md
## notes-of-digital-image-processing
md_filename="# Digital image processing"
echo $md_filename >> book_reading.md
echo "  	" >> book_reading.md
#echo "|   |   |   |" >> book_reading.md
#echo "|---:|---|---|" >> book_reading.md
var=1
for f in `ls ~/Dropbox/blog/github.io/book_reading/notes-of-digital-image-processing/*.md | sort -f`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str=" | *$var*. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) |"
	md_str="*$var*. [${md_filename_space:8} . $data](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) </br>"
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> book_reading.md
done
echo "  	" >> book_reading.md
## notes-of-machine-learning
md_filename="# Machine learning"
echo $md_filename >> book_reading.md
echo "  	" >> book_reading.md
#echo "|   |   |   |" >> book_reading.md
#echo "|---:|---|---|" >> book_reading.md
var=1
for f in `ls ~/Dropbox/blog/github.io/book_reading/notes-of-machine-learning/*.md | sort -f`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str=" | *$var*. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) |"
	md_str="*$var*. [${md_filename_space:8} . $data](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) </br>"
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> book_reading.md
done
echo "  	" >> book_reading.md
## notes-of-machine-learning
md_filename="# Model thinking"
echo $md_filename >> book_reading.md
echo "  	" >> book_reading.md
#echo "|   |   |   |" >> book_reading.md
#echo "|---:|---|---|" >> book_reading.md
var=1
for f in `ls ~/Dropbox/blog/github.io/book_reading/notes-of-model-thinking/*.md | sort -f`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str=" | *$var*. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) |"
	md_str="*$var*. [${md_filename_space:8} . $data](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) </br>"
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> book_reading.md
done
echo "  	" >> book_reading.md
## notes-of-machine-learning
md_filename="# Numerical methods forengineers"
echo $md_filename >> book_reading.md
echo "  	" >> book_reading.md
#echo "|   |   |   |" >> book_reading.md
#echo "|---:|---|---|" >> book_reading.md
var=1
for f in `ls ~/Dropbox/blog/github.io/book_reading/notes-of-numerical-methods-for-engineers/*.md | sort -f`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str=" | *$var*. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) |"
	md_str="*$var*. [${md_filename_space:8} . $data](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) </br>"
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> book_reading.md
done
echo "  	" >> book_reading.md
## notes-of-Statistical_Natural_Language_Processing
md_filename="# Statistical Natural Language Processing"
echo $md_filename >> book_reading.md
echo "  	" >> book_reading.md
#echo "|   |   |   |" >> book_reading.md
#echo "|---:|---|---|" >> book_reading.md
var=1
for f in `ls ~/Dropbox/blog/github.io/book_reading/notes-of-Statistical_Natural_Language_Processing/*.md | sort -f`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str=" | *$var*. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) |"
	md_str="*$var*. [${md_filename_space:8} . $data](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) </br>"
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> book_reading.md
done
echo "  	" >> book_reading.md
## notes-of-计算机自然语言处理
md_filename="# 计算机自然语言处理"
echo $md_filename >> book_reading.md
echo "  	" >> book_reading.md
#echo "|   |   |   |" >> book_reading.md
#echo "|---:|---|---|" >> book_reading.md
var=1
for f in `ls ~/Dropbox/blog/github.io/book_reading/notes-of-jisuanjiziranyuyanchuli/*.md | sort -f`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str=" | *$var*. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) |"
	md_str="*$var*. [${md_filename_space:8} . $data](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) </br>"
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> book_reading.md
done
echo "  	" >> book_reading.md
## notes-of-pattern-classification
md_filename="# Pattern Classification"
echo $md_filename >> book_reading.md
echo "  	" >> book_reading.md
#echo "|   |   |   |" >> book_reading.md
#echo "|---:|---|---|" >> book_reading.md
var=1
for f in `ls ~/Dropbox/blog/github.io/book_reading/notes-of-pattern-classification/*.md | sort -f`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str=" | *$var*. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) |"
	md_str="*$var*. [${md_filename_space:8} . $data](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) </br>"
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> book_reading.md
done
echo "  	" >> book_reading.md
## notes-of-pattern-recognition-and-machine-learning
md_filename="# Pattern recognition and machine learning"
##echo "  	" >> book_reading.md
echo $md_filename >> book_reading.md
echo "  	" >> book_reading.md
#echo "|   |   |   |" >> book_reading.md
#echo "|---:|---|---|" >> book_reading.md
var=1
for f in `ls ~/Dropbox/blog/github.io/book_reading/notes-of-pattern-recognition-and-machine-learning/*.md | sort -f`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str=" | *$var*. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) |"
	md_str="*$var*. [${md_filename_space:8} . $data](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) </br>"
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> book_reading.md
done
echo "  	" >> book_reading.md
## notes-of-Multimedia-Information-Management
md_filename="# Multimedia Information Management"
##echo "  	" >> book_reading.md
echo $md_filename >> book_reading.md
echo "  	" >> book_reading.md
#echo "|   |   |   |" >> book_reading.md
#echo "|---:|---|---|" >> book_reading.md
var=1
for f in `ls ~/Dropbox/blog/github.io/book_reading/notes-of-Multimedia-Information-Management/*.md | sort -f`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -F pandoc-mermaid -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str=" | *$var*. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) |"
	md_str="*$var*. [${md_filename_space:8} . $data](https://rawgit.com/gujiuxiang/PaperNotes/master/post/book_reading/$md_filename.html) </br>"
	echo "Processing for file - $html_filename"
	pandoc $f -t html -F pandoc-mermaid -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> book_reading.md
done
echo "  	" >> book_reading.md
echo "</left>" >> book_reading.md
pandoc book_reading.md -t html -F pandoc-mermaid -s -o book_reading.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
#cp Convex_Optimization.md ~/github/gujiuxiang.github.io/_posts/2016-06-11-Convex-Optimization.md
