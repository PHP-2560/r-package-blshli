
merge.tables <- function(df){
  
  temp.df <- tibble()
  for (n in 1:length(df)){
    temp.df <-  temp.df %>%
      bind_rows(df[[n]])
  }
  return(temp.df)
}
