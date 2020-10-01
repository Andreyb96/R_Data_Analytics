library("ggplot2")
mydata <- as.data.frame(HairEyeColor[,,'Female'])
obj <- ggplot(data = mydata, aes(x = Hair, y = Freq, fill = Eye)) + 
  geom_bar(stat="identity", position = position_dodge()) + 
  scale_fill_manual(name = "Eye",values=c("Brown", "Blue", "Darkgrey", "Darkgreen"))