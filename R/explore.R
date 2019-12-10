explore<- function(subject = NULL, ...){
  if (is.null(subject)) (stop('A search query is required, see help for examples'))
  url.constructor(subject, ...) %>%
    nature.scrape()
}



