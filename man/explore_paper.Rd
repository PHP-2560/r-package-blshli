\name{explore_paper}
\alias{explore_paper}
\title{explore_paper}
\description{
Use explore_paper( ) to open a paper in default browser 
}
\usage{
Takes as input either a url, or both a title (or part of title) to query and a tibble or result from explore_keyword( ) or explore_subject( ) call
explore_paper(url = 'https://www.nature.com' )
explore_paper(url = NULL, title,res )
}
\arguments{
url:  url to open, default is NULL

.title:  "title or part of title to search for in result tibble"

res: results from explore_paper( ) or explore_subject( ) call 
}
\examples{
papers <- explore_subject('Biochemistry')
explore_paper <- function(url = NULL, .title = 'Introduction', res = papers)
}
