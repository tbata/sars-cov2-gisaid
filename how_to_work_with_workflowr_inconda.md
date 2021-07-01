# HOWTO notes for installing workflowr using a conda environment

Note this howto document is quite genome.dk centric but can in principle be used for other systems

NB: This assumes that conda is installed eg see
https://genome.au.dk/docs/installing-software/

# Get mamba for faster version...
conda install mamba -n base -c conda-forge

# New R environemnt (with new tidyverse + R)
conda create -n r_env2
source activate r_env2
conda install -y -c conda-forge r-essentials
mamba install -y -c conda-forge r-base=4.1.0 # Force R version
# mamba install -y -c conda-forge r-xgboost r-e1071 r-ranger # to get xgboost up and running
mamba install -y -c conda-forge r-ggsci
mamba install -y -c conda-forge r-workflowr
mamba install -y -c conda-forge r-cowplot # to get cowplot


# Notes on conda environments : 
Example of command lines aer starting twith eg `$ blabla -something` 

* to  activate this environment, use
`$ conda activate r_env2`

* to deactivate an active environment, use

`$ conda deactivate`

# Safety first

## Cloning from github
`$ git clone https://github.com/tbata/sars-cov2-gisaid`

## Removing cleanly everything

If you want to clean everything out :
`$ rm -rf sars-cov2-gisaid/`
