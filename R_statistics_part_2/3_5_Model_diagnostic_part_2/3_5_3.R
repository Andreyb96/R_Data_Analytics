library(psych)
high.corr <- function(x)
{
    df <- x[,sapply(x, is.numeric)]
    fit <- corr.test(df)
    diag(fit$r) <- NA
    a <- row.names(fit$r)
    ifelse((which.max(abs(fit$r))%%length(df) == 0), b <- a[which.max(abs(fit$r))%/%length(df)], 
         b <- a[(which.max(abs(fit$r))%/%length(df))+1])
    ifelse((which.max(abs(fit$r))%%length(df) == 0), d <- a[which.max(abs(fit$r))%%length(df) + length(df)], 
         d <- a[which.max(abs(fit$r))%%length(df)])
    my_list <- c(b,d)
    return(my_list)
}