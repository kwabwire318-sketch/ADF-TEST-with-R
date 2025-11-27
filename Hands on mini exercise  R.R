# loading the AirPassengers dataset
data("AirPassengers")
ap <- AirPassengers

# Plot of the raw time series inorder to visualize trend and seasonality
plot(ap,
     main = "AirPassengers Data (Monthly)",
     ylab = "Number of Passengers",
     xlab = "Year")

# Loading the tseries package to access adf.test()
library(tseries)

# Performing the Augmented Dickey-Fuller (ADF) test
# Null hypothesis (H0): The series has a unit root (non-stationary)
# Alternative: The series is stationary
adf.test(ap)

#p-value < 0.05 → Reject null hypothesis
#Series is stationary
