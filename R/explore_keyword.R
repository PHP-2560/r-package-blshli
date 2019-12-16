explore_keyword <- function(keyword, article.types = NULL, sort.method = NULL,
                            publication.range = NULL,  l.year = NULL, 
                            u.year = NULL, page.range = NULL){
  subject = keyword # set subject to keyword  to match explore arguments
  if (length(subject) > 1 ) (subject <- str_flatten(subject,collapse = ' ')) #if vector input
  #collapse vector into single string with former elements seperated by a whitespace
  # the white space will be replaced by the appropriate seperator during url construction
  if (is.null(page.range)){ # if page range isnt supplied , the first results page will be scraped
    explore(subject, article.types , sort.method ,
            publication.range ,  l.year , 
            u.year, pages = 1 )
  } 
  else{ # if page range range supplied, map across the range using the explore function
    # pages will be scraped sequentialy
    if (! is.numeric(page.range)) stop('supplied ranges are not numeric') # check that range is numeric
    map_dfr(page.range, ~ multi.explore(.x, subject,article.types , sort.method ,
                                    publication.range ,  l.year , 
                                    u.year )) #%>%
    # merge.tables # replaced with map_dfr
    }
}



