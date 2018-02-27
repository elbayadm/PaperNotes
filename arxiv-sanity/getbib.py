import os
import sys
import os.path as osp
import json
import subprocess
import urllib.request
import xml.etree.ElementTree as ET
import argparse
from shutil import copyfile
import bibtexparser
from bibtexparser.bibdatabase import BibDatabase
from bibtexparser.bwriter import BibTexWriter


def main(args):

    bibfile = "arxiv-refs.bib"
    if args.scholar:
        bibfile = "gs-arxiv-refs.bib"
    if osp.exists(bibfile):
        copyfile(bibfile, bibfile+".backup")
    # out = open(bibfile, 'w')
    db = BibDatabase()
    db.entries = []
    citekeys = []
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
            bib = subprocess.check_output("gscholar \"" + title + "\"", shell=True).decode("utf-8")
        else:
            bib = subprocess.check_output("arxivcheck " + identifier, shell=True).decode("utf-8")
        bibjs = bibtexparser.loads(bib).entries[0]
        print(bibjs)
        bibjs['file'] = "pdfs/%s.pdf" % identifier
        author = bibjs['author'].split()
        try:
            author = author[:author.index('and')][-1]
        except:
            author = author[-1]
        citekey = '%s_%s' % (author, bibjs['year'])
        alph = 'abcefghi'
        i = 0
        _citekey = citekey
        while citekey in citekeys:
            citekey = _citekey+alph[i]
            i += 1
        print('Citekey:', citekey)
        bibjs['ID'] = citekey
        citekeys.append(citekey)
        db.entries.append(bibjs)
        # Adding to Papis
        # print('Adding ', bibjs['file'])
        # p = subprocess.Popen("papis add --author \'%s\' --title \'%s\' ../%s" % (bibjs['author'],
                                                                                 # bibjs['title'],
                                                                                 # bibjs['file']),
                             # shell=True)
        # (output, err) = p.communicate()
        # #This makes the wait possible
        # p_status = p.wait()
        # print('Status', p_status)
        bibjs = {}
    writer = BibTexWriter()
    with open(bibfile, 'w') as f:
        f.write(writer.write(db))



if __name__=="__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('--download', '-d', action='store_true', help="download pdf files")
    parser.add_argument('--dir', type=str, default="../pdfs", help="outout directory for pdfs")
    parser.add_argument('--scholar', '-g', action='store_true', help="get bibtex from scholar")
    args = parser.parse_args()
    main(args)




