\name{explore_paper}
\alias{explore_paper}
\title{explore_paper}
\description{
Convenience wrapper for browseURL. Can open a url supplies directory or search a results tibble from explore_keyword( ) or explore_subject( ) and open url of paper matching a specified title (supports partial titles)
}
\usage{
explore_paper(url = 'https://www.nature.com')
explore_paper(title, res)
}
\arguments{
\item{url}{a url to open}
\item{title}{The section of an article "title or part of title to search for in result tibble"(see   example for details)}
\item{res}{Results from explore_paper( ) or explore_subject( ) call (see example for details)}
}
\details{
This function provides an easy way for the user to open an article of interest in a browser without having to manually identify url of paper.
}
\examples{
#Query examples
# save results from explore subject call 
papers <- explore_subject('Biochemistry')
# open paper in browser that has 'Introduction in title
explore_paper <- function(url = NULL, .title = 'Introduction', res = papers)
}
