# main scrapping function 
nature.scrape <- function(url){
  web.page<- read_html(url) # get url

  
  
  titles <- html_nodes(web.page, css = '.h3 a') %>% #names of newest papers
    html_text() %>% # convert to text 
    str_remove_all('\n\\s*') #remove white space and newline pattern
  
  dates <- html_nodes(web.page, css = 'time') %>% # scrape dates
    html_text() %>% # convert to texts
    str_remove_all('\n\\s*') %>% #remove white space and newline pattern
    dmy() # convert to date class
  
  
  journal <- html_nodes(web.page, css = '#content .text-gray') %>% # scrape journal info
    html_text()%>% #get text
    str_remove_all('\n\\s*') #remove white space and newline pattern
  
  base <- 'https://www.nature.com' 
  urls <- html_nodes(web.page, css = '.h3 a') %>% # get urls 
    html_attr('href') %>%
    str_extract('/articles/.*\\w')  # remove padding to get actual url
  
  urls <- paste0(base,urls) # add the base url to get valid links
  
  out.table <- tibble(journal, dates, titles, urls) # construct a tibble 
  return(out.table) # return tibble
  
}

