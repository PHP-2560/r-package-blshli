explore<- function(subject = NULL, ...){
  require(dplyr)
  if (is.null(subject)) (stop('A subject query is required, see help for examples'))
  url.constructor(subject, ...) %>%
    nature.scrape()
}



