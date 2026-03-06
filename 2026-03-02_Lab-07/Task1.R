library(readxl)
library(dplyr)
# library(xlsx)

titanic <- read.csv("titanic.csv")
# View(titanic)

print(sum(is.na(titanic)))
print(which(is.na(titanic)))

print(sapply(titanic, function(x) sum(is.na(x))))

dim(titanic)
titanic_cleaned <- na.omit(titanic)
dim(titanic_cleaned)

colnames(titanic_cleaned)

print(filter(titanic_cleaned, Sex == 'female'))
print(filter(titanic_cleaned, Fare > 50))

# titanic_cleaned %>% filter(sex == 'female', fare > 500)

titanic_sortbyfare <- arrange(titanic_cleaned, Fare)
# titanic_sortbyfare <- arrange(titanic_cleaned, desc(fare))

write.csv(titanic_sortbyfare, "titanic_sortbyfare.csv")
