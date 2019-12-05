########  Setting date range ########
param_checker.predefined.dates <- function(publication.range){
supported.ranges<- c('today', 'last_7_days', 'last_30_days', 'last_year',
                     'last_2_years', 'last_5_years')

## coerce to string
publication.range <- as.character(publication.range)

if (length(publication.range) > 1){
  warning('Multiple date ranges are not supported, using only the first provided range')
  publication.range = publication.range[1]
}

## default to relevance if unsupported sort by method enetered 
if (! (publication.range %in% supported.ranges)){
  warning( paste(sort.method, "is not a supported date range: defaulting to 'last_year'",
                 "use 'date.ranges()' to see acceptable ranges."))
  publication.range = 'last_year'
} }
