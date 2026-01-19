#!/bin/bash 

mkdir -p fastqc_results 
mkdir -p trimmomatic_results 
R1="SRR36738156_1.fastq"
R2="SRR36738156_2.fastq"
OUTPUT_DIR="fastqc_results"

echo "Running FastQC on raw data..."
fastqc --outdir fastqc_results SRR36738156_1.fastq SRR36738156_2.fastq

echo "Pipeline complete! Check the fastqc_results folder for reports."

trimmomatic PE -phred33 \
 SRR36738156_1.fastq SRR36738156_2.fastq \
 trimmomatic_results/R1_paired.fq trimmomatic_results/R1_unpaired.fq \
 trimmomatic_results/R2_paired.fq trimmomatic_results/R2_unpaired.fq \
 SLIDINGWINDOW:4:20 \
 MINLEN:50 \
 AVGQUAL:30 

echo "Running fastqc on trimmed data..."
fastqc --outdir trimmomatic_results trimmomatic_results/R1_paired.fq trimmomatic_results/R2_paired.fq

echo "Analysis complete! Results are in fastqc_results and trimmomatic_results"
