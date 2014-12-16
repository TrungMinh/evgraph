#!/bin/bash

filename="$1"
echo $1
if  echo "$1" | grep -q ".fasta" ; then
	idba_hybrid --read $1 -o $1_out
else 
	echo "no"
fi
cd $1_out
Sibelia -s loose -a contig.fa
