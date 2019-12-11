explore_subject <- function(subject = NULL, article.types = NULL, sort.method = NULL,
                            publication.range = NULL,  l.year = NULL, 
                            u.year = NULL, pages = 1, page.range = NULL){
  if (length(subject) > 1 ) stop('Only queries for 1 subject is supported')
  if ( ! (subject %in% list.topics())) stop(paste(subject, 'is not supported, use list.topics() to find supported subjects'))
  subject <- str_replace_all(subject, '\\s', '-') %>%
    str_to_lower()
  
  ### quick note for manual, allowing both range and singe page to be provided at the same time but ranges will take precedence 
  if (is.null(page.range)){
    explore(subject,article.types , sort.method ,
            publication.range ,  l.year , 
            u.year, pages )
  } 
  else{
    map(page.range, ~ multi.explore(.x,subject,article.types , sort.method ,
                                    publication.range ,  l.year , 
                                    u.year , pages )) %>%
      merge.tables
    }
}




