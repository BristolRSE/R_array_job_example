#!/bin/bash
#SBATCH --job-name="R array job example"
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=0:02:00
#SBATCH --mem-per-cpu=100M
#SBATCH --array 1-5

echo "Start job script"

R_LANG_MODULE="lang/r"
cd "${SLURM_SUBMIT_DIR}"

echo "Current working directory: $(pwd)"
echo "SLURM_ARRAY_JOBID=${SLURM_ARRAY_JOB_ID}"
echo "SLURM_ARRAY_TASK_ID=${SLURM_ARRAY_TASK_ID}"

module load "${R_LANG_MODULE}"

# Run script with array index as a command line argument
Rscript script.R ${SLURM_ARRAY_TASK_ID}

echo "End job script"