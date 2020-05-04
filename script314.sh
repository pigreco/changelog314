#!/bin/bash
# filtro github: is:pr is:closed label:feature merged:2020-02-22T00:00:00Z..2020-05-15T12:00:00Z
set -x
 
rm *.csv
 
for p in {1..5}
do
    curl "https://github.com/qgis/QGIS/pulls?page=""$p""&q=is%3Apr+is%3Aclosed+label%3Afeature+merged%3A2020-02-22T00%3A00%3A00Z..2020-05-15T12%3A00%3A00Z&utf8=%E2%9C%93" | scrape -be ".pr-md-2"  |xq '.html.body.div[]|{pr:.a["@href"]?,titolo:.a["#text"]?,tag:[.span[1].a[]["#text"]?],autore:.div.span[0].a["#text"]?,milestone:.div.span[2]?.a["@aria-label"]?,datetime:.div.span[0]["relative-time"]["@datetime"]}' | mlr --j2c unsparsify >pag"$p".csv
done
 
mlr --csv unsparsify *.csv >merge.csv
rm pag*.csv
vd merge.csv