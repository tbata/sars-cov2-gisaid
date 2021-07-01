#' config file for the analysis of GISAID sars-Cov2 data
#' Here we save a few hard coded options such as path to raw data,
#' lineages to focus on etc. These are hard coded here to avoid code duplication
#' that is quite error prone


# data path to the current data freeze
data_path <- "data/2021-06-18/"

# use_downsampled set to TRUE to use 300K
use_downsampled <- TRUE # if TRUE uses the 300K genome downsampled data freeze, otherwise full data

# List of pangolin lineages to include in the analysis

pangolin_lineages <- c("B.1.177", "B.1.5", "B.1", "B.1.1","B.1.1.28",  "B.1.1.7", "B.1.351", "P.1")
