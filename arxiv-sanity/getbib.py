import os
import sys
import os.path as osp
import subprocess
import urllib.request
import xml.etree.ElementTree as ET
import argparse
from shutil import copyfile


def main(args):

    bibfile = "arxiv-refs.bib"
    if osp.exists(bibfile):
        copyfile(bibfile, bibfile+".backup")
    out = open(bibfile, 'w')
    base = "http://export.arxiv.org/api/query?id_list="
    identifiers = [l.strip() for l in open('arxivids.txt', 'r')]
    titles = [l.strip() for l in open('titles.txt', 'r')]
    for identifier, title in zip(identifiers, titles):
        url = base + identifier
        tree = ET.parse(urllib.request.urlopen(url))
        root = tree.getroot()
        if args.download:
            subprocess.call("wget --user-agent=Lynx https://arxiv.org/pdf/" + identifier + ".pdf --directory-prefix %s" % args.dir, shell=True)
        if args.scholar:
            bib = subprocess.check_output("gscholar " + title,  shell=True).decode("utf-8")
        else:
            bib = subprocess.check_output("arxivcheck " + identifier,  shell=True).decode("utf-8")
        out.write(bib)
    out.close()



if __name__=="__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('--download', '-d', action='store_true', help="download pdf files")
    parser.add_argument('--dir', type=str, default="../pdfs", help="outout directory for pdfs")
    parser.add_argument('--scholar', '-g', action='store_true', help="get bibtex from scholar")
    args = parser.parse_args()
    main(args)




