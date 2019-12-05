
nature.scrape <- function(url){
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
  
  
  
  out.table <- tibble(journal, dates, titles)
  return(out.table)
  
}

