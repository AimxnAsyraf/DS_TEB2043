#1.1
data <- c("East", "West", "East", "North", "North", "East", "West", "West",
          "West", "East", "North")
print(data)
print(is.factor(data))

factor_data <- factor(data)
print(factor_data)
print(is.factor(factor_data))
length(factor_data)

#1.2
data <- factor(c("East", "West", "East", "North", "North", "East", "West",
                 "West", "West", "East", "North"))
data[3]

#1.3
data <- factor(c("East", "West", "East", "North", "North", "East", "West",
                 "West", "West", "East", "North"))
data[3] <- "NorthWest"

#1.4
