#!/bin/bash

# 1. Define Variables
INDEX="alignment_index"
R1="trimmomatic_results/R1_paired.fq"
R2="trimmomatic_results/R2_paired.fq"
SAM_FILE="alignment_results.sam"
BAM_FILE="alignment_results.bam"
SORTED_BAM="alignment_results_sorted.bam"

# 2. Run Bowtie2 Alignment (The -S creates the SAM file)
echo "Aligning reads..."
bowtie2 -x $INDEX -1 $R1 -2 $R2 -S $SAM_FILE

# 3. Convert SAM to BAM (Saves space)
echo "Converting SAM to BAM..."
samtools view -S -b $SAM_FILE > $BAM_FILE

# 4. Sort the BAM file (Required for most downstream tools)
echo "Sorting BAM file..."
samtools sort $BAM_FILE -o $SORTED_BAM

# 5. Index the BAM file (Creates a .bai file for quick searching)
echo "Indexing BAM file..."
samtools index $SORTED_BAM

# 6. Optional: Clean up the huge SAM file
# rm $SAM_FILE

echo "Process complete! Final file: $SORTED_BAM"
