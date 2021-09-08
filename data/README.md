# Data

## genomes and mutations
`proteins_sarscov2_genome_positions.rds` contains the genomic coordinates of the different protein coding genes along the genome

Data origin: public gisaid data processed via the snpeff pipeline of PV (separate workflow implemented as gwf workflow on genome.dk PHC) 
Data freeze are included in sub-folders that stamped for instance `2021-04-09`
Source for covariates :

## genomic covariates for window based analysis

Covariates compiled for 100 bp windows, compiled by Susan Bailey and Angela Alonso are in `MutCounts_with_covariates.csv`: 

`Protein`: protein assigned to the 100bp window 

`Range`: window number within a given protein 

`Lineage`: pangolin lineage (if several genomes are analyzed by window and by pangolin lineage) 

`protein.range`: unique id of a window (combining the Protein and Range information) 

`Type`: whena Count of mutations identified in a group of genomes (eg within a Lineage) is done by window, the S and NS refer to Synonymous and Nonsynonymous mutations 

`t.period` time periods duringt eh SARS-cov2 pandemic (dates intervals see Rmd scripts S0_creating_data_by_windows_xx) 

*dS estimates* ( eg `W.R.dS` `W.G.dS` `R.G.dS`) were computed as averaged over 100bp windows and averages of pairwise dS estimates computed using Wuhan-1 (W for sars-cov2) and two coronaviruses isolated from bats  - RaTG13 (R)-  and  Malayan pangolin strains,  GD410721 (G). 
These were obtained ( pers com) from Hongru Wang, Lenore Pipes, Rasmus Nielsen, Synonymous mutations and the molecular evolution of SARS-CoV-2 origins, Virus Evolution, Volume 7, Issue 1, January 2021, veaa098, https://doi.org/10.1093/ve/veaa098  

`W.R.dS`  is the pariwise ds estimate when considering WuhanHu1 vs. RaTG13 

`W.G.dS`  is the pariwise ds estimate when considering WuhanHu1 vs  GD410721 

*immunogenicity indexes* (`ii.CD4` `ii.CD8` etc) are obtained (pers comm) from

A SARS-CoV-2 vaccine candidate would likely match all currently circulating variants
Bethany Dearlove, Eric Lewitus, Hongjun Bai, Yifan Li, Daniel B. Reeves, M. Gordon Joyce, Paul T. Scott, Mihret F. Amare, Sandhya Vasan, Nelson L. Michael, Kayvon Modjarrad, Morgane Rolland
Proceedings of the National Academy of Sciences Sep 2020, 117 (38) 23652-23662;  https://doi.org/10.1073/pnas.2008281117

`ENC`: Effective number of codons (computed on the ref Wuhan-1 sequence by Angela Alonso, using DAMBE7)

Xuhua Xia, DAMBE7: New and Improved Tools for Data Analysis in Molecular Biology and Evolution, Molecular Biology and Evolution, Volume 35, Issue 6, June 2018, Pages 1550–1552, https://doi.org/10.1093/molbev/msy073)

`ENC_STD`: Standard deviation of Effective number of Codons

`PPI`: host-viral protein-protein interactions. Source: The BIOGRID  interaction Database, consulted on July 30th, 2020.

`GO`: Gene Ontology enrichment analysis. Source: https://www.nature.com/articles/s41586-020-2286-9/figures/9

`Protein Domains`: Source: https://www.ncbi.nlm.nih.gov/Structure/SARS-CoV-2.html,  consulted on July 30th, 2
