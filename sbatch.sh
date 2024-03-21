#!/bin/bash

#SBATCH --job-name=EmoGen-training
#SBATCH --output=resultat.txt
#SBATCH --ntasks=1
#SBATCH --time=24:00:00
#SBATCH --mem=60GB 
#SBATCH --mail-type=ALL
#SBATCH --mail-user =drinechiraze@gmail.com
#SBATCH --partition=gpu
#SBATCH --gres=gpu:rtx3090:1
#SBATCH --exclusive

# Setup SSH port forwarding for Jupyter Lab
/usr/bin/ssh -N -R 5000:localhost:5000 slurm.info.polymtl.ca &
pid=$!

# Load modules and activate Conda environment
source /etc/profile.d/modules.sh
module load anaconda3
conda activate myenv

# Start Jupyter Lab on port 5000
jupyter-lab --port=5000 --ip=0.0.0.0 --no-browser &


# Stop Jupyter Lab and SSH tunnel after your job is done
jupyter notebook stop 5000
kill $pid