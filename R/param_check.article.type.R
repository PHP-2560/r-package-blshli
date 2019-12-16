########  Setting article types ########
param_check.article.type <- function(article.types){
# list of valid article types
supported.types <- c('research','reviews','news','comments-and-opinion','news-and-views',
                     'amendments-and-corrections','correspondence','editorial',
                     'special-features','advertorial','books-and-arts','protocols','multimedia','research-highlights')


## check if any on the input article types arent in supported article types 
if (! is.null(article.types)) {
  article.types <- str_to_lower(article.types) %>% # make lower case to match supported.type format
    str_replace_all( '\\s', '-') # remove white space to match url pattern of website
}


indx <- article.types %in% supported.types # get T/F for article types vetor 

if (sum (indx ) < length(article.types)){ # check if all true, if not print message 
  #indicating which article types arent supported
  print('The following article types are not supported and will be excluded:')
  print(article.types[!indx])
}

## check to see if at least one supported article type was provided 
if (sum(indx) != 0 ){ # if atleast 1 valid article type provided 
  # replace article types entered with valid/formatted article types
  article.types = article.types[indx]
} else  { # if none were valid, set type to research and print message
  article.types = 'research'
  print("No valid article type was provided, defaulting to 'research'")
}
}
