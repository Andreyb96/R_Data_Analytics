filtered.sum <- function(x)
{
  	a <- sum(x[x>0],na.rm = TRUE)
  	return(a)
}