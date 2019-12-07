\name{explore_keywords}
\alias{explore_keywords}
\title{explore_keywords}
\usage{
explore_keywords(keyword)
}
\description{
returns tible with research papers on queried keywords 
}
\examples{

papers <- explore_keywords('FOXO3')
#search parameters can be modified by providing addition arguments

papersfrom2015to2019 <- explore_keywords('FOXO3',article.types = 'review', publication.range = '2015-2019')

papersafter2015 <- explore_keywords('FOXO3',article.types = 'review', l.year= 2015)

papersbefore2015 <- explore_keywords('FOXO3',article.types = 'review', u.year= 2015)

papersbefore2015byRelevance <- explore_keywords('FOXO3',article.types = 'review', u.year= 2015, sort.method = 'relevance')

papersbefore2015byRelevance_pages1to10 <- explore_keywords('FOXO3',article.types = 'review', u.year= 2015, sort.method = 'relevance', page.range = 1:10)


### Need to add more examples and stuff 
}
