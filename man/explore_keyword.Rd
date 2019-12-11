\name{explore_keyword}
\alias{explore_keyword}
\title{explore_keyword}
\description{

Takes as input a keyword query, returns a tibble of latest papers in keyword area.
}

\usage{
explore_keyword(keyword, article.types = NULL, sort.method = NULL,
                            publication.range = NULL,  l.year = NULL, 
                            u.year = NULL, page = 1,page.range = NULL)
}
\arguments{
\item{keyword}{A character search query}
\item{article.types}{article types to return. c('research','reviews','news','comments-and-opinion','news-and-views','amendments-and-corrections','correspondence','editorial','special-features','advertorial','books-and-arts','protocols','multimedia','research-highlights') }
\item{sort.method}{method to sort articles. c('relevance','date_desc','date_asc')}
\item{publication.range}{restrict results return to predefined date range. c('today', 'last_7_days', 'last_30_days', 'last_year','last_2_years', 'last_5_years')}
\item{l.year}{include articles before a specific date defaults to earliest year returning results}
\item{u.year}{include articles after a specific date defaults to current year. l.year and u.year should not be used when publication.range != NULL}
\item{page}{page to return the search results from}
\item{page.range}{modifier that allows multiple pages of results to be returned. By default, only the first page of results from query are returned specifying range from n:m. When page.range = NULL, only the first page of results are returned.} 
}
\value{a tibble of search results}


\details{
This function queries the nature.com website for a keyword(s) of interest. The function returns a tibble with publications found in search. The search query can be modified  by article type, publication year or date range, relevance and results page.
}
\examples{
#Query examples 
papers <- explore_keyword('FOXO3') 

#Search parameters can be modified by providing additional arguments
#Option 1 Specifying a date range for results
papersfrom2015to2019 <- explore_keyword('FOXO3',article.types = 'review', publication.range = '2015-2019')


#Option 2 Specifying lower bound of date range
papersafter2015 <- explore_keyword('FOXO3',article.types = 'reviews', l.year= 2015)

#Option 3 Specifying upper bound of date range
papersbefore2015 <- explore_keyword('FOXO3',article.types = 'reviews', u.year= 2015)

#Option 4 Sorting results by relevance
papersbefore2015byRelevance <- explore_keyword('FOXO3',article.types = 'reviews', u.year= 2015, sort.method = 'relevance')

#Option 5 Specifiyng results from more than 1 page. (generally a page query will return ~ 50 papers )
papersbefore2015byRelevance_pages1to10 <- explore_keyword('FOXO3',article.types = 'reviews', u.year= 2015, sort.method = 'relevance', page.range = 1:10)
}
