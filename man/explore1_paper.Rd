\name{explore_paper}
\alias{explore_paper}
\title{explore_paper}
\description{
returns tibble with research papers on queried paper 
}

\usage{
explore_paper(url = 'http.....' )
explore_paper(url = NULL, title,res )
}

\arguments{
url         A link to an article or page of interest. If not specified, defaults to NULL however,   
            title and res will be required; place in quotes.

title       The section of an article to return (see example for details) 

res         Specifies the type of article of interest (see example for details)
}

\details{
This function allows the user to input a link to an article of interest. The return will be access to the contents of the article (if an open access). If the article if not open access, a message will appear to inform the user. In an event where url is not specified, it will default to NULL. However, title and res options will be required to proceed with the code.
}

\examples{
#this is not an example of a url
papers <- explore_paper('Biochemistry')
papers <- explore_paper('http://nature.com')

#When url is not selected, specify title and res
explore_paper <- function(url = NULL, .title = 'Introduction', res = papers)

### Need to add more examples and stuff 
div((##I am not sure how this script works especially when url = NULL), style = "color: blue;")
}
