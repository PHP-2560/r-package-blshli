#install.packages('devtools')
library(devtools)

library(dplyr)
install_github("PHP-2560/r-package-blshli", force = T, build_vignettes = T )
library(DiscoverNature)

paper.results <- explore_keyword('stem cells')
paper.results %>%
  View()

explore_paper(.title = 'Tppp3+', res = paper.results)

vignette('DiscoverNature')

