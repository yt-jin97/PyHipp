#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=1:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH -J "freqsp"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o freqsp-slurm.%N.%j.out # STDOUT
#SBATCH -e freqsp-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; pyh.FreqSpectrum(saveLevel=1); pyh.FreqSpectrum(loadHighPass=True, pointsPerWindow=3000, saveLevel=1);"
