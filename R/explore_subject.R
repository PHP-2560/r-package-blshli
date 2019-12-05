explore<- function(subject = NULL, ...){
  if (is.null(subject)) (stop('A subject query is required, see help for examples'))
  url.constructor(subject, ...) %>%
  nature.scrape()
}


multi.explore <- function(cpage, ...){
  explore(..., pages = cpage)
}



explore_nature <- function(subject = NULL, page.range = NULL, ...){
  ### quick note for manual, allowing both range and singe page to be provided at the same time but ranges will take precedence 
  if (is.null(page.range)){
    explore(subject = subject, ...)
  } 
  else{
    map(page.range, ~ multi.explore(.x, subject = subject)) %>%
      merge.tables
    }
}



