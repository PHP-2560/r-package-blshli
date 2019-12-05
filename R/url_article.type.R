# url_article.type
# function to generate string for url search query from string of given article types 
url_article.type <- function(article.types)
  article.types %>%
  str_replace_all('\\s','%2C') %>%
  return()