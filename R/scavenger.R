
scavenger <- function(pages = 1, article.type = NULL, article.year =NULL ){


  # Construct the url for the search query based on input parameters
  if ( is.null(article.type)) (base.url <- 'https://www.nature.com/nature/articles?searchType=journalSearch&sort=PubDate&')

  if ( is.null(! article.type)) (base.url <- paste0('https://www.nature.com/nature/articles?searchType=journalSearch&sort=PubDate&',
                                                    'type=',article.type ))
  if ( is.null(! article.year)) (base.url <- paste0(base.url, '&year=', article.year))

  url <- paste0(base.url,pg)
  web.page<- read_html(url)
  research.html <- GET(url)


  titles <- html_nodes(web.page, css = '.word-wrap a') %>% #names of newest papers
    html_text()

  types <- html_nodes(web.page, css = '.mb4 span:nth-child(1)') %>% #types of papers
    html_text()

  dates <- html_nodes(web.page, css = 'time') %>% #types of papers
    html_text() %>%
    str_remove_all( ' ') %>%
    dmy()

  titles <- str_replace(titles, '\n                    \n                    ','')

  out.table <- tibble(types, dates, titles)
  print(pg)
  return(out.table)
}
