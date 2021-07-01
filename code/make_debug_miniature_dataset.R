#' Make a miniature debug dataset for testing
#'
data_path <- "data/2021-04-09/"
library(readr)
mutations    <- read_rds(paste(data_path, "/mutations_snpeff_annotated_tidy.rds", sep=""))
mutations_mini <- mutations[1:10000,]
saveRDS(mutations_mini, file=paste(data_path, "/mutations_miniature_snpeff_annotated_tidy.rds", sep=""))

