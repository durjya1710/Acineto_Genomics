#!/bin/bash 

mkdir -p spades_results 

R1="trimmomatic_results/R1_paired.fq"
R2="trimmomatic_results/R2_paired.fq"
OUTDIR="spades_results"

echo "Starting assembly using SPAdes"

spades.py -1 trimmomatic_results/R1_paired.fq -2 trimmomatic_results/R2_paired.fq -o spades_results --only-assembler
