\name{explore_subject}
\alias{explore_subject}
\title{explore_subject}
\description{
Takes as input a subject query, returns a tibble of latest papers in subject area.
}
\usage{
explore_subject(subject, ...)
}
\arguments{
\item{keyword}{A character search query}
\item{article.types}{article types to return. c('research','reviews','news','comments-and-opinion','news-and-views','amendments-and-corrections','correspondence','editorial','special-features','advertorial','books-and-arts','protocols','multimedia','research-highlights') }
\item{sort.method}{method to sort articles. c('relevance','date_desc','date_asc')}
\item{publication.range}{restrict results return to predefined date range. c('today', 'last_7_days', 'last_30_days', 'last_year','last_2_years', 'last_5_years')}
\item{l.year}{include articles before a specific date defaults to earliest year returning results}
\item{u.year}{include articles after a specific date defaults to current year. l.year and u.year should not be used when publication.range != NULL}
\item{page.range}{modifier that allows multiple pages of results to be returned. By default, only the first page of results from query are returned specifying range from n:m. When page.range = NULL, only the first page of results are returned.} 
}
\value{a tibble of search results}
\details{
This function queries the nature.com website papers in a subject area of interest. List of defined subject areas can be found by using the list.topics( ) function.The function returns a tibble with publications found in search. The search query can be modified  by article type, publication year or date range, relevance and results page.
}
\examples{
# Supported subject areas
list.topics()
  [1] "Biochemistry"                                  
  [2] "Biological techniques"                         
  [3] "Biophysics"                                    
  [4] "Biotechnology" 
...

# Perform search for subject area Biochemistry
papers <- explore_subject('Biochemistry') 

#Search parameters can be modified by providing additional arguments

papersfrom2015to2019 <- explore_subject('Biochemistry',article.types = 'review', publication.range = '2015-2019')

#Option 2 Specifying lower bound of date range
papersafter2015 <- explore_subject('Biochemistry',article.types = 'review', l.year= 2015)

#Option 3 Specifying upper bound of date range
papersbefore2015 <- explore_subject('Biochemistry',article.types = 'review', u.year= 2015)

#Option 4 Sorting results by relevance
papersbefore2015byRelevance <- explore_subject('Biochemistry',article.types = 'review', u.year= 2015, sort.method = 'relevance')

#Option 5 Specifiyng results from more than 1 page. (generally a page query will return ~ 50 papers )
papersbefore2015byRelevance_pages1to10 <-  explore_subject('Biochemistry',article.types = 'review', u.year= 2015, sort.method = 'relevance', page.range = 1:10)
}
