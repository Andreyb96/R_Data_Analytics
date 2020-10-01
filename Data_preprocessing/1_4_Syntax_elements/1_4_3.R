good_months <- 0
k <- 1
a <- as.vector(AirPassengers)
for (i in 1:(length(a)-1))
{
	if (a[i+1]>a[i])
  	{
    	good_months[k] <- a[i+1]
    	k <- k + 1
  	}
}