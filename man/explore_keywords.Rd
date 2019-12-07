\name{explore_subjects}
\alias{explore_subjects}
\title{explore_subjects}
\usage{
explore_subjects(subject)
}
\description{
returns tible with research papers on queried subjects 
}
\examples{

papers <- explore_subjects('Biochemistry')
#search parameters can be modified by providing addition arguments

papersfrom2015to2019 <- explore_subjects('Biochemistry',article.types = 'review', publication.range = '2015-2019')

papersafter2015 <- explore_subjects('Biochemistry',article.types = 'review', l.year= 2015)

papersbefore2015 <- explore_subjects('Biochemistry',article.types = 'review', u.year= 2015)

papersbefore2015byRelevance <- explore_subjects('Biochemistry',article.types = 'review', u.year= 2015, sort.method = 'relevance')

papersbefore2015byRelevance_pages1to10 <-  explore_subjects('Biochemistry',article.types = 'review', u.year= 2015, sort.method = 'relevance', page.range = 1:10)


### Need to add more examples and stuff 
}
