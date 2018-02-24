#!/bin/bash
# Basic if statement
if [ $1 -gt 0 ]
then
    cd ~/github/PaperNotes/post/book_reading
    ./gen_html_transfer.sh
    cd ~/github/PaperNotes/post/Convolutional_Neural_Networks
    ./gen_html_transfer.sh
    cd ~/github/PaperNotes/post/Hardware_Design
    ./gen_html_transfer.sh
    cd ~/github/PaperNotes/post/Programming_Skills
    ./gen_html_transfer.sh
    cd ~/github/PaperNotes/post/Recurrent_Neural_Network
    ./gen_html_transfer.sh
    cd ~/github/PaperNotes/post/Reinforcement_Learning
    ./gen_html_transfer.sh
fi
cd ~/github/PaperNotes/post
cp -rf ~/Dropbox/blog/github.io/2015-03-03-Datasets-Codes.md.html .
