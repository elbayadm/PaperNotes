#!/bin/bash
cp -rf Hardware_Design.md.head Hardware_Design.md
UpdateTime=`date '+%d/%m/%Y_%H:%M:%S'`
echo "<center> Update: $UpdateTime</center></br></br>" >> Hardware_Design.md
echo "  	" >> Hardware_Design.md

echo "  	" >> Hardware_Design.md
#echo "|   |   |   |" >> Convolutional_Neural_Networks.md
#echo "|---:|---|---|" >> Convolutional_Neural_Networks.md
rm -rf *.html
rm -rf *.txt
var=1
for f in `ls ~/Dropbox/blog/github.io/hardware-design/*.md | sort -r`;
do
	## pandoc 20151210_Deep_residual_learning_for_image_recognition.md -t html -s -o test.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	md_filename=${f##*[/|\\]}
	html_filename="$PWD/$md_filename.html"
	md_filename_space="${md_filename%%.*}"
	md_filename_space=${md_filename_space//_/ }
  data=${md_filename:0:8}
	#md_str="| *$var*. | $md_filename_space |  [Note](https://rawgit.com/gujiuxiang/gujiuxiang.github.io/master/blog/post/convolutional-neural-networks/$md_filename.html) |"
	md_str="*$var*. [${md_filename_space:8} . $data](https://rawgit.com/gujiuxiang/gujiuxiang.github.io/master/blog/post/hardware-design/$md_filename.html) </br>"
	echo "Processing for file - $html_filename"
	pandoc $f -t html -s -o $html_filename --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
	var=$((var+1))
	echo $md_str >> Hardware_Design.md
done

pandoc Hardware_Design.md -t html -s -o Hardware_Design.html --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
#cp Convolutional_Neural_Networks.md ~/github/gujiuxiang.github.io/_posts/2015-06-14-Convolutional_Neural_Networks.md
