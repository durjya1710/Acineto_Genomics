#!/bin/bash 

mkdir -p fastqc_results 

R1="SRR36738156_1.fastq"
R2="SRR36738156_2.fastq"
OUTPUT_DIR="fastqc_results"

echo "Running FastQC on raw data..."
fastqc --outdir fastqc_results SRR36738156_1.fastq SRR36738156_2.fastq

echo "Pipeline complete! Check the fastqc_results folder for reports."
