#' make_genome_positions.R
#' This function returns the name of the gene that is associated with a genomic position. It will return the gene name closest
#' (but downstream of) to the start position

coords <- read_rds("data/proteins_sarscov2_genome_positions.rds")
coords <- coords %>%
  arrange(start_pos)

get_gene_name <- function(a_genomic_position) {
  if(a_genomic_position < 266) return("before_leader")     # if the position is <266
  if(a_genomic_position > 30000) return("out_of_range")    # assuming hat this is the biggest coordinate that makes sense
  position_test <- a_genomic_position+1 - coords$start_pos   # else ... finding the nearest start of a gene
  names(position_test)<- coords$name
  return(names(which.min(position_test[position_test>0]))) # ugly compact test to find the nearest start of a gene
  }

get_gene_name(200) #
get_gene_name(267)
get_gene_name(30002)

# Here is a version  building on PV proposal and hard codes the case of the nsp11 versus RDRp
# If the position is in  13442-13481 -> nsp11
# if the position is in 13481-16238 -> RDRp

get_gene_name_pv_tb <- function(a_genomic_position) {
  # First a test that checks both gene_start and gene_end
  i <- which(a_genomic_position >= coords$start_pos & a_genomic_position <= coords$end_pos)
  if (length(i) == 1) return(coords$name[i])
  if (length(i) == 2) return(ifelse(a_genomic_position >13481, "RDRp", "nsp11")) #tests for the nsp11/RDRp case above
  return("No gene found")
}

