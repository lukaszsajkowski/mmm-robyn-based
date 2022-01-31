remotes::install_github("facebookexperimental/Robyn/R")

library(reticulate)

reticulate::install_miniconda()
reticulate::conda_create("r-reticulate")
reticulate::use_condaenv("r-reticulate")
reticulate::conda_install("r-reticulate", "nevergrad", pip=TRUE)
