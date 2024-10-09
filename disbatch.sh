#!/bin/bash -l
#SBATCH --output=test.out
#SBATCH --partition=debug  # Partition (queue) name
#SBATCH --nodes=1 # Total number of nodes 
#SBATCH --ntasks-per-node=1
#SBATCH --time=00:12:00       # Run time (d-hh:mm:ss)
#SBATCH --account=project_462000613  # Project for billing
#SBATCH --cpus-per-task=1

srun ./test

