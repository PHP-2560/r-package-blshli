# base function to scrape data from a url 
explore<- function(subject = NULL, article.types = NULL, sort.method = NULL,
                   publication.range = NULL,  l.year = NULL, 
                   u.year = NULL, pages = 1 ){
  # check to ensure search query passed to function correctly 
  if (is.null(subject)) (stop('A search query is required, see help for examples')) 
  #pass arguments to url.constructor
  url.constructor(subject,article.types , sort.method ,
                  publication.range ,  l.year , 
                  u.year,pages) %>%
    #scrape data from website
    nature.scrape()
}



