#!/bin/bash
#SBATCH --partition=general
#SBATCH --mem=4096
#SBATCH --job-name faToTwoBit
#SBATCH --output faToTwoBit.out

/home/bioinformatics/software/ucsc-tools/ucsc-tools-20171107/faToTwoBit \
  /scratcha/bioinformatics/reference_data/reference_genomes/homo_sapiens/GRCh38/fasta/hsa.GRCh38.fa \
  GRCh38.2bit 
