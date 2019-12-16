explore_subject <- function(subject = NULL, article.types = NULL, sort.method = NULL,
                            publication.range = NULL,  l.year = NULL, 
                            u.year = NULL, pages = 1, page.range = NULL){
  if (length(subject) > 1 ) stop('Only query for 1 subject is supported') # check to make sure only 1 subject
  #area inputted
  # check to make sure subject is in subject area, match case with resukts from list.topics()
  if ( ! (str_to_sentence(subject) %in% list.topics())) stop(paste(subject, 'is not supported, use list.topics() to find supported subjects'))
  subject <- str_replace_all(subject, '\\s', '-') %>% # replace white space to follow url pattern of website
    str_to_lower() # convert  to lower case to follow url pattern of website
  
  # set sort method to date_desc if pub range and sort method not provided
  if(is.null(publication.range) & is.null(sort.method)) (sort.method = 'date_desc')
  
    
  # # if page range isnt supplied , the first results page will be scraped
  if (is.null(page.range)){
    explore(subject,article.types , sort.method ,
            publication.range ,  l.year , 
            u.year, pages )
  } 
  else{# if page range range supplied, map across the range using the explore function
    # pages will be scraped sequentialy
    map_dfr(page.range, ~ multi.explore(.x,subject,article.types , sort.method ,
                                    publication.range ,  l.year , 
                                    u.year)) #%>%
    # merge.tables # replaced with map_dfr
    }
}




