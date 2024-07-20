#!/bin/bash

blastn -task blastn -dust no -soft_masking false -query StSat.fa -subject lowperc.fa \
	-perc_identity 80 -outfmt "10 qseqid sseqid sstart send nident pident length" -out lowperc.csv
 
