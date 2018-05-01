#!/bin/bash
#SBATCH --partition=general
#SBATCH --mem=4096
#SBATCH --job-name alignment
#SBATCH --output alignment.out

/home/bioinformatics/software/pipelines/alignment/current/bin/run-pipeline --mode=slurm realignment-meta.xml
#/home/bioinformatics/software/pipelines/alignment/current/bin/run-pipeline --mode=slurm --keep-shell-files realignment-meta.xml
