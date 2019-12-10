explore_keyword <- function(keyword = NULL, article.types = NULL, sort.method = NULL,
                            publication.range = NULL,  l.year = NULL, 
                            u.year = NULL, pages = NULL, page.range = NULL){
  subject = keyword
  if (length(subject) > 1 ) (subject <- str_flatten(subject,collapse = ' '))
  ### quick note for manual, allowing both range and singe page to be provided at the same time but ranges will take precedence 
  if (is.null(page.range)){
    explore(subject, article.types , sort.method ,
            publication.range ,  l.year , 
            u.year , pages , page.range )
  } 
  else{
    map(page.range, ~ multi.explore(.x, subject,article.types , sort.method ,
                                    publication.range ,  l.year , 
                                    u.year , pages )) %>%
      merge.tables
    }
}


