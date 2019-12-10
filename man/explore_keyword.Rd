\name{explore_keywords}
\alias{explore_keywords}
\title{explore_keywords}
\description{
Takes as input a keywords query, returns a tibble latest papers in keywords area.
}
\usage{
explore_keywords( )
}
\arguments{
article.types:  article types to return
Can include c('research','reviews','news','comments-and-opinion','news-and-views',
                     'amendments-and-corrections','correspondence','editorial',
                     'special-features','advertorial','books-and-arts','protocols','multimedia','research-highlights')

sort.method:  method to sort articles. 
Can include c('relevance','date_desc','date_asc')

publication.range:  restrict results return to predefined date range
Can include one of c('today', 'last_7_days', 'last_30_days', 'last_year',
                     'last_2_years', 'last_5_years')
                     
l.year: include articles before a specific date
defaults to earliest year returning results

u.year: include articles after a specific date
defaults to current year. l.year and u.year should not be used when publication.range != NULL

page.range: modifier that allows multiple pages of results to be returned. By default, only the first page of results from query are returned specifying range from n:m. When page.range = NULL, only the first page of results are returned. 
}
\examples{
# query examples 
papers <- explore_keywords('FOXO3')
#search parameters can be modified by providing addition arguments

#Option 1 Specifying predefined date range
papersfrom2015to2019 <- explore_keywords('FOXO3',article.types = 'review', publication.range = 'last_5_years')

#Option 2 Specifying lower bound of date range
papersafter2015 <- explore_keywords('FOXO3',article.types = 'review', l.year= 2015)

#Option 3 Specifying upper bound of date range
papersbefore2015 <- explore_keywords('FOXO3',article.types = 'review', u.year= 2015)

#Option 4 Sorting results by relevance
papersbefore2015byRelevance <- explore_keywords('FOXO3',article.types = 'review', u.year= 2015, sort.method = 'relevance')

#Option 5 Specifiyng results from more than 1 page. (generally a page query will return ~ 50 papers )
papersbefore2015byRelevance_pages1to10 <- explore_keywords('FOXO3',article.types = 'review', u.year= 2015, sort.method = 'relevance', page.range = 1:10)
}
