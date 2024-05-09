#!/bin/bash

#SBATCH --job-name=testRparallel
#SBATCH --mem=16G
# Number of nodes resquested
#SBATCH --cpus-per-task=5
#SBATCH --ntasks=1

# Replace by the path to the folder where your script lives if nessary  
DIR_SCRIPT=/users/${USER}/hpc_utils

# Load R modules
module load R/4.2.1-foss-2022a

Rscript ${DIR_SCRIPT}/test_parallel.R
