list.topics <- function(){
  web.page<- read_html('https://www.nature.com/subjects/') # url to subject topics overview
  html_nodes(web.page, css = '#content .text14') %>% #names of subjects
    html_text() %>% # get text
  return()
}

