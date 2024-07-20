#!/bin/bash

SEQUENCES=100

sort -t, -n -k6 all_18k_chimp_contigs_on_homo.csv | \
	cut -d, -f1 | cut -d\| -f2 | head -n $SEQUENCES > seqids.txt

blastdbcmd -db AACZ04 -entry_batch seqids.txt -out lowperc.fa
