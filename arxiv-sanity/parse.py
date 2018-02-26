import json
import os
import os.path as osp


FILES = ['titles.txt', 'arxivids.txt']
FP = []
for f in FILES:
    if osp.exists(f):
        os.remove(f)
    FP.append(open(f, 'w'))

bib = json.load(open('library.json'))
count = 0
for b in bib:
    count += 1
    title = ''.join(b['title'].split('\n'))
    FP[0].write(title+'\n')
    arxivid = b['link'].split('/')[-1]
    # remove the version
    arxivid = arxivid[:arxivid.find('v')]
    FP[1].write('%s\n' % arxivid)
print('Parsed %d papers in your library' % count)

for f in FP:
    f.close()
