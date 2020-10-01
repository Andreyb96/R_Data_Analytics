df <- subset(diamonds, carat==0.46 & cut == 'Ideal')
fit_coef <- lm(price~depth,df)$coefficients