#!/bin/bash
# Basic if statement
if [ $1 -gt 0 ]
then
    cd ~/work/PaperNotes/post/book_reading
    ./gen_html_transfer.sh
    cd ~/work/PaperNotes/post/Convolutional_Neural_Networks
    ./gen_html_transfer.sh
    cd ~/work/PaperNotes/post/Hardware_Design
    ./gen_html_transfer.sh
    cd ~/work/PaperNotes/post/Programming_Skills
    ./gen_html_transfer.sh
    cd ~/work/PaperNotes/post/Recurrent_Neural_Network
    ./gen_html_transfer.sh
    cd ~/work/PaperNotes/post/Reinforcement_Learning
    ./gen_html_transfer.sh
fi
