#!/bin/bash
# filtro github: is:pr is:closed label:feature merged:2020-02-22T00:00:00Z..2020-05-15T12:00:00Z
set -x
# rimuove eventuali file CSV
rm *.csv
# crea ciclo, 6 sono il numero delle pagine WEB
for p in {1..6}
do
    curl "https://github.com/qgis/QGIS/pulls?page=$p&q=is%3Apr+is%3Aclosed+label%3Afeature+merged%3A2020-02-22T00%3A00%3A00Z..2020-05-15T12%3A00%3A00Z&utf8=%E2%9C%93" | scrape -be ".pr-md-2"  |xq '.html.body.div[]|{PR:.a["@href"]?,Description:.a["#text"]?,tag:.span[1].a,Author:.div.span[0].a["#text"]?,Milestone:.div.span[2]?.a["@aria-label"]?,Merged:.div.span[0]["relative-time"]["@datetime"]}' | mlr --j2c unsparsify then cut -r -f '(PR|Descr|text|Auth|Miles|Merged)'  >pag"$p".csv
done
# merges all CSV files
mlr --csv unsparsify *.csv >merge.csv
# concatenate the fields
mlr -I --csv put -S '$tags=${tag:#text}."; ".${tag:0:#text}."; ".${tag:1:#text}."; ".${tag:2:#text}."; ".${tag:3:#text}."; ".${tag:4:#text}' merge.csv
# delete fields not listed
mlr --csv cut -o -f Description,Author,Milestone,PR,Merged,tags merge.csv >merge_mod.csv
# removes the CSV files starting with pag
rm pag*.csv
# view the file with VisiData
vd merge_mod.csv