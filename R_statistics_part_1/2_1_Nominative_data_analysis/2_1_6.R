main_stat <- chisq.test(factor(ifelse(diamonds$price >= mean(diamonds$price), 1, 0))
                        ,factor(ifelse(diamonds$carat >= mean(diamonds$carat), 1, 0)))$statistic