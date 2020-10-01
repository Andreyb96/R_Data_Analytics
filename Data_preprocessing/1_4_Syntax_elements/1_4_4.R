a <- as.vector(AirPassengers)
moving_average <- numeric(length(a)-9)
for (i in 1:(length(a)-9))
{
	moving_average[i] <- mean(a[i:(i+9)])
}