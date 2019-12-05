
subject.search <- function(pages = 1, article.type = NULL, article.year =NULL, subject = NULL ){

  base.url <- 'https://www.nature.com/search?q='


  if (is.null(subject)) (stop('A subject query is required, see help for examples'))

  subject <- str_replace_all( subject, '\\s', replacement = '%20')

  base.url <- paste0(base.url, subject)


  #if (! is.null(article.type)) (base.url <- paste0(base.url,'&article_type=',article.type))

  #if (! is.null(article.year)) (base.url <- paste0(base.url,'&date_range=',article.year))






  url <- base.url
  web.page<- read_html(url)
  research.html <- GET(url)


  titles <- html_nodes(web.page, css = '.h3 a') %>% #names of newest papers
    html_text() %>%
    str_remove_all('\n\\s*')

  dates <- html_nodes(web.page, css = 'time') %>%
    html_text() %>%
    str_remove_all('\n\\s*') %>%
    dmy()


  journal <- html_nodes(web.page, css = '#content .text-gray') %>%
    html_text()%>%
    str_remove_all('\n\\s*')

  # authors <- html_nodes(web.page, css = '#content') %>% #names of newest papers
  #   html_text() %>%
  #   str_extract_all('\n            \\w+[. ].*\\w\\n') %>%
  #   unlist() %>%
  #   str_remove_all('\n            ') %>%
  #   str_remove_all('\n')

  out.table <- tibble(journal, dates, titles)
  return(out.table)


}



subject.search(subject = 'FOXO3')
