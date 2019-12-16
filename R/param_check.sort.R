########  Sorting of page results ########
## acceptable sort order parameters 
param_check.sort <- function(sort.method){
sort.by <- c('relevance','date_desc','date_asc')

## Check to ensure order paramater inputed is supported 
#ensure lowercase
if (! is.null(sort.method)) sort.method = str_to_lower(sort.method)
if (length(sort.method) > 1) stop('only 1 sort by method can be used')

## default to relevance if unsupported sort by method enetered 
if (! (sort.method %in% sort.by)){
  warning( paste(sort.method, "is not a supported sort method: defaulting to 'relevance'"))
  sort.method = 'relevance'
} 
}
