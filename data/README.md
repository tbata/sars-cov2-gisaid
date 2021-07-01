# Data

`proteins_sarscov2_genome_positions.rds` contains the genomic coordinates of the different protein coding genes along the genome

Data origin: public gisaid data processed via the snpeff pipeline of PV (separate workflow implemented as gwf workflow on genome.dk PHC) 
Data freeze are included in sub-folders that stamped for instance `2021-04-09`
Source for covariates :

*dS estimates* ( eg `W.R.dS` `W.G.dS` `R.G.dS`) were computed as averaged over 100bp windows and averages ofpairwise dS estimates computed using Wuhan-1 (for sars-cov2) and two coronaviruses isolated from bats, RaTG13 and RmYN02. These were obtained ( pers com) from Hongru Wang, Lenore Pipes, Rasmus Nielsen, Synonymous mutations and the molecular evolution of SARS-CoV-2 origins, Virus Evolution, Volume 7, Issue 1, January 2021, veaa098, https://doi.org/10.1093/ve/veaa098  

*immunogenicity indexes* (ii.`CD4` `ii.CD8` etc) are obtained ( pers comm)from

A SARS-CoV-2 vaccine candidate would likely match all currently circulating variants
Bethany Dearlove, Eric Lewitus, Hongjun Bai, Yifan Li, Daniel B. Reeves, M. Gordon Joyce, Paul T. Scott, Mihret F. Amare, Sandhya Vasan, Nelson L. Michael, Kayvon Modjarrad, Morgane Rolland
Proceedings of the National Academy of Sciences Sep 2020, 117 (38) 23652-23662;  https://doi.org/10.1073/pnas.2008281117


Covariates compiled by Susan and Angela from Goodlove et al PNAS, and dS estimates  are in `MutCounts_with_covariates.csv`

