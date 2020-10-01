mtcars$even_gear <- 0 
mtcars$even_gear[mtcars$gear%%2==0] <- 1