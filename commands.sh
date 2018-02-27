#!/bin/bash
# Download arxiv paper given id
download_arxiv(){
    while getopts 't:d:i:' flag; do
      case "${flag}" in
        i) arxivid=${OPTARG} && echo "input id: "$arxivid;;
        t) title=${OPTARG} && arxivid=$(id_arxiv $title) && echo "From title got:" $arxivid ;;
        d) doi=${OPTARG} && echo "Not implemented yet" ;;
        *) error "Unexpected option ${flag}" ;;
      esac
    done
    echo "ArxivID:"$arxivid
    wget --user-agent=Lynx https://arxiv.org/pdf/$arxivid.pdf
}


#Get arxiv id given the title:
id_arxiv(){
    echo $(title2bib $1 -f | sed -n -e 's/^.*{arxiv://p' | cut -f1 -d'v')
}
