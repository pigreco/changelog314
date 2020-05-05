#!/bin/bash
# filtro github: is:pr is:closed label:feature merged:2020-02-22T00:00:00Z..2020-05-15T12:00:00Z
set -x
# removes any CSV files
rm *.csv
# create cycle, 5 are the number of WEB pages
for p in {1..5}
do
    curl "https://github.com/qgis/QGIS/pulls?page=""$p""&q=is%3Apr+is%3Aclosed+label%3Afeature+merged%3A2020-05-05T18%3A00%3A00Z..2020-05-15T12%3A00%3A00Z&utf8=%E2%9C%93" | scrape -be ".pr-md-2"  |xq '.html.body.div[]|{pr:.a["@href"]?,titolo:.a["#text"]?,tag:[.span[1].a[]["#text"]?],autore:.div.span[0].a["#text"]?,milestone:.div.span[2]?.a["@aria-label"]?,datetime:.div.span[0]["relative-time"]["@datetime"]}' | mlr --j2c unsparsify >pag"$p".csv
done
# merges all CSV files
mlr --csv unsparsify *.csv >merge.csv
# concatenate the fields
mlr -I --csv put -S '$tags=${tag:0}."; ".${tag:1}."; ".${tag:2}."; ".${tag:3}."; ".${tag:4}' merge.csv
# delete fields not listed
mlr --csv cut -o -f titolo,autore,milestone,datetime,pr,tags merge.csv >merge_mod.csv
# removes the CSV files starting with pag
rm pag*.csv
# view the file with VisiData
vd merge_mod.csv