library("ggplot2")

obj <- ggplot(data = ToothGrowth, aes(x = supp, y = len, fill = factor(dose))) +
  geom_boxplot()