
# reserves range if lower is greater than upper year 
param_checker.daterange <- function(l.year, u.year){
if (is.null(u.year)) (u.year = year(today())) #if only lower year provided, set upper year to this year
if (is.null(l.year)) (l.year = 1845)  # if lower year not provided set to first year of publication

# ensure correct order of lower and upper year is used by checking sizes
if (l.year > u.year) {
  l.year.o = l.year; u.year.o = u.year
  l.year = u.year.o
  u.year = l.year.o
}

if (l.year < 1845) (l.year = 1845) # if less than, set lower year to first year of publication if input value 

if (u.year > year(today())) (u.year = year(today())) # if greater than, set upper year to currecnt year
#l.year <- as.character(l.year)
#u.year <- as.character(u.year)
return(list(l.year, u.year))

}
