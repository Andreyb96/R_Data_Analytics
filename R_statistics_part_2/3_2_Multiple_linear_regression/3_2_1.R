fill_na <- function(x)
{
    fit <- lm(y~x_1+x_2,x)
    y_full <- data.frame(y_full = predict(fit, x))
    for (i in 1:length(x$y))
    {
      if (is.na(x$y)[i] == TRUE)
      {
        x$y_full[i] <- y_full$y_full[i]
      }
      else
      {
        x$y_full[i] <- x$y[i]
      }
    }
  return(x)
}