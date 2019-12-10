\name{explore_paper}
\alias{explore_paper}
\title{explore_paper}
\description{
Takes as input either a url alone, or both a title (or part of title) and result (res) from explore_keyword( ) or explore_subject( ) to create a query. This function will return list of articles for the query using user defined default browser.
}

\usage{
explore_paper(url = 'https://www.nature.com', title = NULL, res = NULL)
explore_paper(url = NULL, title, res)
}

\arguments{
url         A link to an article or page of interest. If not specified, defaults to NULL however,   
            title and res will be required; place in quotes.

title       The section of an article "title or part of title to search for in result tibble"(see   
            example for details) 

res         Results from explore_paper( ) or explore_subject( ) call (see example for details)
}

\details{
This function allows the user to input a link to an article of interest. The return will be access to the contents of the article (if an open access). If the article is not open access, a message will appear to inform the user. In an event where url is not specified, it will default to NULL. However, title and res options will be required to proceed with the code.
}

\examples{
#Query examples
papers <- explore_subject('Biochemistry')

explore_paper <- function(url = NULL, .title = 'Introduction', res = papers)
}
