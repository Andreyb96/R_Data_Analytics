NA.counter <- function(x)
{
	a <- which(is.na(x))
  	return (length(a))
}