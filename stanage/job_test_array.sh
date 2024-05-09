#!/bin/bash
#SBATCH --job-name=myarrayjob
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --array=1-54

# Specify the path to the config file
config=~/hpc_utils/dummy_array_config.txt
STEPSIZE=4000
NSIM=216000
NJOBS=$(($NSIM / $STEPSIZE)) 

# Extract the sample name for the current $SLURM_ARRAY_TASK_ID
#sample=$(awk -v ArrayTaskID=$SLURM_ARRAY_TASK_ID '$1==ArrayTaskID {print $2}' $config)

# Extract the sex for the current $SLURM_ARRAY_TASK_ID
#sex=$(awk -v ArrayTaskID=$SLURM_ARRAY_TASK_ID '$1==ArrayTaskID {print $3}' $config)

echo "Number of tasks: ${SLURM_ARRAY_TASK_MAX}"
echo "task id: ${SLURM_ARRAY_TASK_ID}"

#starting=$((1 + $step_size * ($i - 1)))
END=$((${STEPSIZE} * ${SLURM_ARRAY_TASK_ID}))
START=$((1 + ${STEPSIZE} * (${SLURM_ARRAY_TASK_ID} - 1)))

echo "Starting task from ${START} to ${END}"

# Print to a file a message that includes the current $SLURM_ARRAY_TASK_ID, the
# same name, and the sex of the sample
#echo "This is array task ${SLURM_ARRAY_TASK_ID}, the sample name is ${sample} and the sex is ${sex}." >> output.txt
