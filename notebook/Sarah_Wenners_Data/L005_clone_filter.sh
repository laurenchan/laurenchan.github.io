#!/bin/bash

filename="./PHCO_names/L005_names_Phry.txt"
all_lines=`cat $filename`

for line in $all_lines;
do 
  clone_filter -P -1 ./L005_processed/$line.1.fq.gz -2 ./L005_processed/$line.2.fq.gz -i gzfastq -o ./PHCO_clone_filtered/ -D &> ./PHCO_clone_filtered/$line.clonefil.oe
done;
