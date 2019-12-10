explore<- function(subject = NULL, article.types = NULL, sort.method = NULL,
                   publication.range = NULL,  l.year = NULL, 
                   u.year = NULL, pages = NULL,...){
  if (is.null(subject)) (stop('A search query is required, see help for examples'))
  url.constructor(subject, ...) %>%
    nature.scrape()
}



