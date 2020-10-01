normality.test  <- function(x)
{
  	a <- c()
  	for (i in 1:length(names(x)))
  	{
    	a[i] <- shapiro.test(x[,i])$p.value
  	}
  	names(a) <- names(x)
  	return(a)
}