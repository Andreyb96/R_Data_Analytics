library(ggplot2)
my_plot <- ggplot(iris, aes(x = Sepal.Width, y = Petal.Width, color = Species))+
  geom_point()+
  xlab("Sepal.Width")+
  ylab("Petal.Width")+
  geom_smooth(method = "lm")