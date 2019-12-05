.mb0 li


url <- 'https://www.nature.com/search?q=car'
web.page<- read_html(url)
research.html <- GET(url)

html_nodes(web.page, css = '.h3 a')
browseURL(url)
