# Function to generate appropriate url for each page based on queries 
 # base url for nature search page 

url.constructor <-  function( subject = NULL, article.types = NULL, sort.method = NULL,
                              publication.range = NULL,  l.year = NULL, 
                              u.year = NULL, pages = NULL){
base.url <- 'https://www.nature.com/search?q='
# param checks and extension

subject <- str_replace_all( subject, '\\s', replacement = '%20')

base.url <- paste0(base.url, subject)


if ((!is.null(publication.range)) & (!is.null(l.year))) stop('provide only one publication range or lower year modifier')

# extending the url
if (! is.null(article.types)){
  param_check.article.type(article.types)
  base.url <- paste0(base.url,'&article_type=', str_replace_all(article.types,'\\s','%2C'))

} 

if (! is.null(publication.range)){
  param_checker.predefined.dates(publication.range)
  base.url <- paste0(base.url,'&date_range=', publication.range)

} 

if ((!is.null(l.year)) | (!is.null(u.year))) {
  rng<- param_checker.daterange(l.year,u.year)
  base.url <- paste0(base.url,'&date_range=', rng[1],'-',rng[2])

}

if (! is.null(sort.method)){
  param_check.sort(sort.method)
  base.url <- paste0(base.url,'&order=',sort.method)

} 
if (! is.null(pages)) (base.url <- paste0(base.url,'&page=',pages))
return(base.url)
}


url.constructor("selection","research",sort.method = 'date_asc')


