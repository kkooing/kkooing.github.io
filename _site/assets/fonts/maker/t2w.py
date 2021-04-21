import os
from fontTools.ttLib import TTFont

entries = os.listdir('D2Coding_subset/')
for entry in entries:
    print(entry)
    f = TTFont('D2Coding_subset/' + entry)
    f.flavor='woff2'
    f.save('D2Coding_subset-out/' + entry.replace('.ttf', '.woff2'))