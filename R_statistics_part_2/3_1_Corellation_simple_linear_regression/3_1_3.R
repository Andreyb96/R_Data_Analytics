library(psych)
smart_cor <- function(x)
{
  	if ((shapiro.test(x[,1])$p.value > 0.05) & (shapiro.test(x[,2])$p.value > 0.05))
  	{
    	return(corr.test(x)$r[2][1])
  	}
  	else
  	{
    	return(cor.test(x[[1]], x[[2]], method = "spearman")$estimate)
  	}
}