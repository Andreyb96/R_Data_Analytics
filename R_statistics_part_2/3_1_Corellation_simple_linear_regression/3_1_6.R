library(psych)
regr.calc <- function(x)
{
    colnames(x) <- c("first","second")
    if (abs(corr.test(x)$p[2][1])<0.05)
    {
      a <- lm(first~second, x)
      x <- data.frame(first = x$first, second = x$second, 
                    fit = a$fitted.values)
      return(x)
    }
    else
    {
      return("There is no sense in prediction")
    }
}