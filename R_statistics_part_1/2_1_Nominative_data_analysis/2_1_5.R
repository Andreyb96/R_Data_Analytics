library('ggplot2')
diamonds
df <- diamonds
main_stat <- unlist(chisq.test(df$cut,df$color)[1])