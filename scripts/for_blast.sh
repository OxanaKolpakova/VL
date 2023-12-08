#!/bin/bash
for filename in /home/alexandr/VLADIK/FASTA_ref/*.fna; 
do 
path="/home/alexandr/VLADIK/FASTA_ref/" 
path2="/home/alexandr/VLADIK/tblastn_results/" 
xbase=${filename##*/}
shname=$path2${xbase%.*}
makeblastdb -in $filename -dbtype prot
tblastn -db $filename -query ${path}KGA01942.faa -num_threads 8  > ${shname}_tblastn.hits
done

