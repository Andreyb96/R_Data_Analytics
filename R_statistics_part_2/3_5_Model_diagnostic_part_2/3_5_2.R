resid.norm  <- function(fit)
{
    if (shapiro.test(fit$residuals)$p.value > 0.05)
    {
      my_plot <- ggplot(fit, aes(x = fit$residuals)) + 
        geom_histogram(binwidth = 4, fill = 'green', col = 'green')
      return(my_plot)
    }
    else
    {
      my_plot <- ggplot(fit, aes(x = fit$residuals)) + 
        geom_histogram(binwidth = 4, fill = 'red', col = 'red')
      return(my_plot)
    }
}
