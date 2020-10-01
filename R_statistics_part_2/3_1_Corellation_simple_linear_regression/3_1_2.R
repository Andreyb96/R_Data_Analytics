library(psych)
filtered.cor <- function(x)
{
  	df <- x[,sapply(x, is.numeric)]
  	fit <- corr.test(df)
  	diag(fit$r) <- NA
  	return(fit$r[which.max(abs(fit$r))])
}