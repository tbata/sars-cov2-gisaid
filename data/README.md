# Data

`proteins_sarscov2_genome_positions.rds` contains the genomic coordinates of the different protein coding genes along the genome

Data origin: public gisaid data processed via the snpeff pipeline of PV (separate workflow implemented as gwf workflow on genome.dk PHC) 
Data freeze are included in sub-folders that stamped for instance `2021-04-09`
Source for covariates :

*dS estimates* ( eg `W.R.dS` `W.G.dS` `R.G.dS`) were computed as averaged over 100bp windows and averages ofpairwise dS estimates computed using Wuhan-1 (for sars-cov2) and two coronaviruses isolated from bats, RaTG13 and RmYN02. These were obtained ( pers com) from Hongru Wang, Lenore Pipes, Rasmus Nielsen, Synonymous mutations and the molecular evolution of SARS-CoV-2 origins, Virus Evolution, Volume 7, Issue 1, January 2021, veaa098, https://doi.org/10.1093/ve/veaa098  

*immunogenicity indexes* (ii.`CD4` `ii.CD8` etc) are from Dearlove et al PNAS 2020 (ref to be added)

Covariates compiled by Susan and Angela from Goodlove et al PNAS, and dS estimates  are in `MutCounts_with_covariates.csv`

