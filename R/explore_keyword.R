explore_keyword <- function(keyword = NULL, page.range = NULL, ...){
  subject = keyword
  if (length(subject) > 1 ) (subject <- str_flatten(subject,collapse = ' '))
  ### quick note for manual, allowing both range and singe page to be provided at the same time but ranges will take precedence 
  if (is.null(page.range)){
    explore(subject = subject, ...)
  } 
  else{
    map(page.range, ~ multi.explore(.x, subject = subject, ...)) %>%
      merge.tables
    }
}


