
# reserves range if lower is greater than upper year 
param_checker.daterange <- function(l.year, u.year){
if (is.null(u.year)) (u.year = year(today())) #if only lower year provided, set upper year to this year
if (is.null(l.year)) (l.year = 1845) 
  
if (l.year > u.year) {
  l.year.o = l.year; u.year.o = u.year
  l.year = u.year.o
  u.year = l.year.o
}

if (l.year < 1845) (l.year = 1845) # set if less than, set lower year to first year of publication if input value 

if (u.year > year(today())) (u.year = year(today())) # if greater than, set upper year to currecnt year
l.year <- as.character(l.year)
u.year <- as.character(u.year)
return(list(l.year, u.year))

}
