#!/bin/bash

# Request 5 gigabytes of real memory (mem)
#SBATCH --mem=5G
# Number of nodes resquested
#SBATCH --cpus-per-task=1
#SBATCH --ntasks=1

# Job name
#SBATCH --job-name=myarrayjob

# Load modules
#module load apps/julia/1.8.5/binary
JULIA="/users/bi1ahd/julia-1.9.2/bin/julia"

#echo "Which version of julia is used?"
#which julia | echo

${JULIA} -e 'println("Hello from Julia!\nI am Julia version $(VERSION)\nI wish u the best in your computing journey!\nI will do my best to help you!")'
