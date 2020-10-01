beta.coef <- function(x)
{
  	x <- data.frame(scale(x))
  	fit <- lm(x[[1]]~x[[2]],x)
  	return(fit$coefficients)
}