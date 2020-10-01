mtcars$new_var <- 0
mtcars$new_var[(mtcars$cyl>6)|(mtcars$carb>=4)] <- 1