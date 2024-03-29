# Function to generate appropriate url for each page based on queries 
 # base url for nature search page 

url.constructor <-  function( subject = NULL, article.types = NULL, sort.method = NULL,
                              publication.range = NULL,  l.year = NULL, 
                              u.year = NULL, pages = 1){
base.url <- 'https://www.nature.com/search?q='
# param checks and extension

subject <- str_replace_all( subject, '\\s+', replacement = '%20') # replace white space with separator 
# used by website for urls

base.url <- paste0(base.url, subject) # add query to url


# extending the url
if (! is.null(article.types)){
  param_check.article.type(article.types) # check article type input if needed
  base.url <- paste0(base.url,'&article_type=')
  
  for (type in article.types){
    base.url <- paste0(base.url,'%2C',type) # add each article type construct to url if needed
  }
} 

# ensure only one date modifier present
if ((!is.null(publication.range)) & (!is.null(l.year))) stop('provide only one: publication range or lower/upper year modifier')
if ((!is.null(publication.range)) & (!is.null(u.year))) stop('provide only one: publication range or lower/upper year modifier')


if (! is.null(publication.range)){
  param_checker.predefined.dates(publication.range) # check pubrange and add if necessary
  base.url <- paste0(base.url,'&date_range=', publication.range)

} 

if ((!is.null(l.year)) | (!is.null(u.year))) {
  rng<- param_checker.daterange(l.year,u.year) #check date range and add if needed
  base.url <- paste0(base.url,'&date_range=', rng[1],'-',rng[2])

}

if (! is.null(sort.method)){
  param_check.sort(sort.method) # check sort method and add if needed
  base.url <- paste0(base.url,'&order=',sort.method)

} 
if (! is.null(pages)) (base.url <- paste0(base.url,'&page=',pages)) # add search page # 
return(base.url)
}





