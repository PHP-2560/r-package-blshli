\name{explore_subject}
\alias{explore_subject}
\title{explore_subject}
\description{
Takes as input a subject query, returns a tibble latest papers in subject area.
}
\usage{
explore_subject( "Biochemistry")
}

\examples{
list.topics()
  [1] "Biochemistry"                                  
  [2] "Biological techniques"                         
  [3] "Biophysics"                                    
  [4] "Biotechnology" 
...

papers <- explore_subject('Biochemistry')
}
\arguments{
article.types:  article types to return
Can include c('research','reviews','news','comments-and-opinion','news-and-views',
                     'amendments-and-corrections','correspondence','editorial',
                     'special-features','advertorial','books-and-arts','protocols','multimedia','research-highlights')

sort.method:  method to sort articles. 
Can include c('relevance','date_desc','date_asc')

publication.range:  restrict results return to predefined date range
Can include on of c('today', 'last_7_days', 'last_30_days', 'last_year',
                     'last_2_years', 'last_5_years')
                     
l.year: include articles before a specific date
defaults to earliest year returning results

u.year: include articles after a specific date
defaults to current year. l.year and u.year should not be used when publication.range != NULL

page.range: modifier that allows multiple pages of results to be returned. By default, only the first page of results from query are returned specifying range from n:m. When page.range = NULL, only the first page of results are returned. 
}
\examples{
# query examples 
#Option 1 Specifying predefined date range
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
