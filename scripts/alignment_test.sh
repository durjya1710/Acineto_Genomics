#!/bin/bash

INDEX= alignment_index

echo "Building index: alignment_index"
bowtie2-build reference.fasta alignment_index 

echo "Running alignment..."
bowtie2 -x $INDEX_NAME \
  -1 trimmomatic_results/R1_paired.fq \
  -2 trimmomatic_results/R2_paired.fq \
  -S alignment_results.sam
