df <- ToothGrowth
df1 <- subset(df, supp == 'VC' & dose == 2)
df2 <- subset(df, supp == 'OJ' & dose == 0.5)
t_stat <- t.test(df2$len,df1$len)$statistic
