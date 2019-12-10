\name{explore_keywords}
\alias{explore_keywords}
\title{explore_keywords}
\description{
Takes as input a keyword query, returns a tibble of latest papers in keywords area.
}

\usage{
explore_keywords(keyword(s), article.types = NULL, sort.method= NULL, publication.range = NULL, l.year = NULL, u.year = NULL, page.range = NULL)
}
<<<<<<< HEAD
\arguments{
article.types:  article types to return
=======

\arguments{
keyword       A phrase or word to be explored; place in quotes

article.types     Article types to return
>>>>>>> 0ebd863c5ab53608975ba03a08888441513be15c
Can include c('research','reviews','news','comments-and-opinion','news-and-views',
                     'amendments-and-corrections','correspondence','editorial',
                     'special-features','advertorial','books-and-arts','protocols','multimedia'  
                      ,'research-highlights')

<<<<<<< HEAD
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
=======
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

\details{
This function allows the user to input a keyword of interest. The return will be publications found under that specific keyword. Keywords can also be filtered and sorted according to the following parameters: type of article, publication year or date range, relevance and page limit. Note, these parameters if not specified are set to default which is NULL.
}

\examples{
#Query examples 
papers <- explore_keywords('FOXO3') #this is the default setting; search only by keyword.

#Search parameters can be modified by providing additional arguments
papersfrom2015to2019 <- explore_keywords('FOXO3',article.types = 'review', publication.range = '2015-2019')
>>>>>>> 0ebd863c5ab53608975ba03a08888441513be15c

#Option 2 Specifying lower bound of date range
papersafter2015 <- explore_keywords('FOXO3',article.types = 'review', l.year= 2015)

#Option 3 Specifying upper bound of date range
papersbefore2015 <- explore_keywords('FOXO3',article.types = 'review', u.year= 2015)

#Option 4 Sorting results by relevance
papersbefore2015byRelevance <- explore_keywords('FOXO3',article.types = 'review', u.year= 2015, sort.method = 'relevance')

#Option 5 Specifiyng results from more than 1 page. (generally a page query will return ~ 50 papers )
papersbefore2015byRelevance_pages1to10 <- explore_keywords('FOXO3',article.types = 'review', u.year= 2015, sort.method = 'relevance', page.range = 1:10)
}
