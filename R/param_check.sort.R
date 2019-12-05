########  Sorting of page results ########
## acceptable sort order parameters 
param_check.sort <- function(sort.method){
sort.by <- c('relevance','date_desc','date_asc')

## Check to ensure order paramater inputed is supported 
## coerce to string
sort.method <- as.character(sort.method)

## default to relevance if unsupported sort by method enetered 
if (! (sort.method %in% sort.by)){
  warning( paste(sort.method, "is not a supported sort method: defaulting to 'relevance'",
                 "use 'sort.methods()' to see acceptable methods."))
  sort.method = 'relevance'
} 
}
