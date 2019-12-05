########  Setting article types ########
param_check.article.type <- function(article.types){
supported.types <- c('research','reviews','news','comments-and-opinion','news-and-views',
                     'amendments-and-corrections','correspondence','editorial',
                     'special-features','advertorial','books-and-arts','protocols','multimedia','research-highlights')


## check if any on the input article types arent in supported article types 
indx <- article.types %in% supported.types

if (sum (indx ) < length(article.types)){
  print('The following article types are not supported and will be excluded:')
  print(article.types[!indx])
}

## check to see if at least one supported article type was provided 
if (sum(indx) != 0 ){
  article.types = article.types[indx]
} else  {
  article.types = 'research'
  print("No valid article type was provided, defaulting to 'research', use 'supported.types()' for acceptable article types")
}
}
