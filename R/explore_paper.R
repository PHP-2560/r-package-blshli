explore_paper <- function(url = NULL, .title = NULL, res = NULL){
  if (is.null(url) & is.null(.title))  stop('paper title or url is required')
  
  if ((!is.null(url)) & is.null(.title)){
    browseURL(url)
    
  }
    
  if (is.null(url) & (!is.null(.title))){
    if (is.null(res)) stop('result table not provided and url = NULL')
    indx <- str_which(res$titles,.title)
    
    if (is.null(indx)) stop("could not find paper matching title")
    if (length(indx) > 1) warning(".title matched multiple paper, only the first will be used")
    
    res[indx, 'urls'][1] %>%
      as.character() %>%
      browseURL()
  }
  
  if ((!is.null(url)) & (!is.null(.title))){
    warning('url and title entered, using url')
    browseURL(url)
    
  }
}
