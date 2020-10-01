outliers.rm <- function(x)
{
  	a <- 1.5*IQR(x)
  	b <- quantile(x, probs = c(0.25, 0.75))
  	ind_x <- c()
  	for (i in 1:length(x))
  	{
    	ifelse(((x[i] < (b[1]-a)) | (x[i] > (b[2]+a))), ind_x[i] <- FALSE, ind_x[i] <- TRUE)
  	}
  	d <- x[ind_x]
  	return(d)
}