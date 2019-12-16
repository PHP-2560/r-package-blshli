multi.explore <- function(cpage, ...){ # wrapper for explore to support purr's map functions
  # allows pmapping across vector
  explore(..., pages = cpage) # arguments passed to explore
}
