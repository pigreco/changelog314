#!/bin/bash
# aggiunge la colonna histo e la popola
set -x
mlr --t2p --barred put '$histo=$count' then bar -x " " -b " " --auto -f histo then cut -x -f histogram then put '$histo=gsub($histo,"[^*]","")' merge_mod_tags_freq.txt

# https://regex101.com/r/u9Zinw/2/