\name{explore_subject}
\alias{explore_subject}
\title{explore_subject}
\description{
Takes as input a subject query, returns a tibble of latest papers in subject area.
}

\usage{
explore_subject(subject, article.types = NULL, sort.method= NULL, publication.range = NULL, l.year = NULL, u.year = NULL, page.range = NULL)
}

\arguments{
subject A topic or category to be explored; place in quotes

article.types     Article types to return
Can include c('research','reviews','news','comments-and-opinion','news-and-views',
                     'amendments-and-corrections','correspondence','editorial',
                     'special-features','advertorial','books-and-arts','protocols','multimedia','research-highlights')

sort.method       Method to sort articles. 
Can include c('relevance','date_desc','date_asc')

publication.range     Restrict results return to predefined date range
Can include on of c('today', 'last_7_days', 'last_30_days', 'last_year',
                     'last_2_years', 'last_5_years')
                     
l.year      Restrict results to custon years
defaults to earliest year returning results

u.year      Restrict results to custon years
defaults to current year. l.year and u.year should not be used when publication.range != NULL

page.range    Modifier that allows multiple pages of results to be returned. By default, only the first page of results from query are returned specifying range from n:m. When page.range = NULL, only the first page of results are returned.
}

\examples{
#Query examples
list.topics()
  [1] "Biochemistry"                                  
  [2] "Biological techniques"                         
  [3] "Biophysics"                                    
  [4] "Biotechnology" 
...

papers <- explore_subject('Biochemistry') #this is the default setting; search only by subject.

#Search parameters can be modified by providing additional arguments
papersfrom2015to2019 <- explore_subject('Biochemistry',article.types = 'review', publication.range = '2015-2019')

papersafter2015 <- explore_subject('Biochemistry',article.types = 'review', l.year= 2015)

papersbefore2015 <- explore_subject('Biochemistry',article.types = 'review', u.year= 2015)

papersbefore2015byRelevance <- explore_subject('Biochemistry',article.types = 'review', u.year= 2015, sort.method = 'relevance')

papersbefore2015byRelevance_pages1to10 <-  explore_subject('Biochemistry',article.types = 'review', u.year= 2015, sort.method = 'relevance', page.range = 1:10)
}
