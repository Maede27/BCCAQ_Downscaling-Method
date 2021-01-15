#!/bin/bash

#SBATCH --account=def-najafim
#SBATCH --time=0-02:00
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=16000M
#SBATCH --mail-user=msamadie@uwo.ca
#SBATCH --mail-type=ALL

export R_LIBS=$HOME/R_libs
cd /home/najafim/scratch/lake_winnipeg/

echo "Current working directory is `pwd`"

# Load the modules:

module load gcc/5.4.0 r/3.5.2 netcdf/4.4.1.1
echo "done!"
Rscript R_climdown_CanESM5.R
