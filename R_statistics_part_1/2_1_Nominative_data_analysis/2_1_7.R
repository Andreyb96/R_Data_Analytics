df <- mtcars
a <- fisher.test(df$am, df$vs)
fisher_test <- a$p.value