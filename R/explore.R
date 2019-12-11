explore<- function(subject = NULL, article.types = NULL, sort.method = NULL,
                   publication.range = NULL,  l.year = NULL, 
                   u.year = NULL, pages = 1 ){
  if (is.null(subject)) (stop('A search query is required, see help for examples'))
  url.constructor(subject,article.types , sort.method ,
                  publication.range ,  l.year , 
                  u.year,pages) %>%
    nature.scrape()
}



