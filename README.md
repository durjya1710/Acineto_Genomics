# Acinetobacter baumannii Genomics Pipeline

An automated pipeline for the quality analysis (FastQC and Trimmomatic), genome assembly (SPAdes), annotation (Prokka), and AMR profiling (AMRFinderPlus) of *Acinetobacter baumannii*  genome 

This project processes raw genome sequencing datasets of *Acinetobacter baumannii* to identify antibiotic resistance genes and provides a streamlined workflow from quality control to biological analysis and interpretation. 

#Tools and Techniques:
- Environment Management : Conda  
- Scripting : Bash/Shell 
- Quality Assessment : FastQC
- Quality Control (Trimming): Trimmomatic 
- Genome Assembly : SPAdes 
- Genome Alignment (optional step): Bowtie2
- Genome Annotation: (Prokka) 
 
#Installation and Setup:
To replicate this environment and run the pipeline, use the provided YAML file:
```bash
conda env create -f envs/environment.yml
conda activate prokka_m1_env

#Project_Structure:
```bash
.
├── envs/
│   └── environment.yml    # Conda environment definition
├── results/
│   └── amr_report.txt     # Final AMR analysis summary
├── scripts/
│   ├── assembly.sh        # Genome assembly script
│   ├── prokka_analysis.sh # Annotation script
│   └── analysis.sh        # Downstream analysis
└── README.md              # Project documentation

# Methodology
1. Quality Control: Trimming and filtering of raw FASTQ reads.
2. Assembly: *De novo* assembly using **SPAdes**.
3. Annotation: Functional gene annotation using **Prokka**.
4. AMR Identification: Resistance gene detection via **AMRFinderPlus**.

## How to Run
To replicate this analysis, ensure you have Conda installed and run:
```bash
conda env create -f envs/environment.yml
conda activate prokka_m1_env
bash scripts/analysis.sh
