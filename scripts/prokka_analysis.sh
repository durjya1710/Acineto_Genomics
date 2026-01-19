#!/bin/bash

mkdir -p prokka_results

INPUT="spades_results/contigs.fasta"
OUTDIR="prokka_results"

echo "Starting annotation using PROKKA"

prokka --outdir "$OUTDIR" \
--prefix acineto_baumannii \
--genus Acinetobacter \
--species baumannii \
--strain ATCC19606 \
--cpus 4 \
--force "$INPUT"
