explore<- function(subject = NULL, ...){
  if (is.null(subject)) (stop('A subject query is required, see help for examples))
  url.constructor(subject, ...) %>%
    nature.scrape()
}



