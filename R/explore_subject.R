explore_subjects <- function(subject = NULL, page.range = NULL, ...){
  if ( ! (subject %in% list.topics())) stop(paste(subject, 'is not supported, use list.topics() to find supported subjects'))
  subject <- str_replace_all(subject, '\\s', '-') %>%
    str_to_lower()
  
  ### quick note for manual, allowing both range and singe page to be provided at the same time but ranges will take precedence 
  if (is.null(page.range)){
    explore(subject = subject, ...)
  } 
  else{
    map(page.range, ~ multi.explore(.x, subject = subject)) %>%
      merge.tables
    }
}




