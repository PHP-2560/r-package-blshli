\name{explore_subjects}
\alias{explore_subjects}
\title{explore_subjects}
\description{
returns tibble with research papers on queried subjects 
}

\usage{
explore_subjects(subject)
}

\arguments{
subject A title or word to be explored; place in quotes
}

\details{
This function allows the user to input a subject of interest from the list of available subjects. The return will be publications found under that specific subject. Subjects can also be filtered and sorted according to the following parameters: type of article, publication date or date range, relevance and page limit. Note, these parameters if not specified are set to default which is NULL.
}

\examples{
papers <- explore_subjects('Biochemistry') #this is the default setting; search only by subject title 

Search parameters can be modified by providing additional arguments.
#Option 1: include type of article and publication date range
papersfrom2015to2019 <- explore_subjects('Biochemistry',article.types = 'review', publication.range = '2015-2019')

#Option 2: include type of article and only after a specific date
papersafter2015 <- explore_subjects('Biochemistry',article.types = 'review', l.year= 2015)

#Option 3: include type of article and dates before a specific date
papersbefore2015 <- explore_subjects('Biochemistry',article.types = 'review', u.year= 2015)

#Option 4: include type of article, date of interest and sort by relevance
papersbefore2015byRelevance <- explore_subjects('Biochemistry',article.types = 'review', u.year= 2015, sort.method = 'relevance')

#Option 5: include type of article, date of interest, sort by relevance and page range
papersbefore2015byRelevance_pages1to10 <-  explore_subjects('Biochemistry',article.types = 'review', u.year= 2015, sort.method = 'relevance', page.range = 1:10)


### Need to add more examples and stuff 
}
