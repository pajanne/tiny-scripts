#!/bin/bash
#SBATCH --partition=general
#SBATCH --mem=40960
#SBATCH --job-name hisat
#SBATCH --output hisat.out

/home/bioinformatics/software/hisat/hisat2-2.1.0/hisat2 \
-x /scratchb/bioinformatics/reference_data/reference_genomes/homo_sapiens/GRCh37/hisat/hsa.GRCh37 \
-1 /scratchb/bioinformatics/pajon01/hisat-dev/fastq/SLX-15109.FLD0021.000000000-BGF94.s_1.r_1.fq.gz \
-2 /scratchb/bioinformatics/pajon01/hisat-dev/fastq/SLX-15109.FLD0021.000000000-BGF94.s_1.r_2.fq.gz \
| /home/bioinformatics/software/samtools/samtools-1.6/bin/samtools view -h -b \
-o /scratchb/bioinformatics/pajon01/hisat-dev/hisatbam/SLX-15109.FLD0021.000000000-BGF94.s_1.bam \
-
