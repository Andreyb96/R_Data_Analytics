library(psych)
corr.calc <- function(x)
{
  	fit  <- corr.test(x)
  	return(c(fit$r[2][1],fit$p[2][1]))
}