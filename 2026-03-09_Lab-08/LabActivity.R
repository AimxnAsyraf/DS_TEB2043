#Activity 1
data("mtcars")

print(head(mtcars, 10))

input <- mtcars[,c('mpg', 'cyl')]
print(head(input))

#Activity 2
# demo(graphics)
# demo(image)

x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")

pie(x, labels)

png(file = "city.png")
pie(x, labels)
dev.off()

pie(x, labels, main = "City pie chart", col = rainbow(length(x)))

piepercent <- round(100*x/sum(x), 1)
pie(x, labels = piepercent)

