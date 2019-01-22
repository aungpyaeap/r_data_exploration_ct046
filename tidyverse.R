#install.packages("tidyverse")
library("tidyverse")
iris <- read.csv("Iris.csv")
iris = select(iris,-Id) #Remove Id
summary(iris)

#dropping missing values
iris %>%
  drop_na() %>%
  summary()

# Filter to get selected Species
iris %>%
  filter(Species == "setosa")
iris %>%
  filter(Species == "versicolor")
iris %>%
  filter(Species == "virginica")

#order by SepalLengthCm
iris %>%
  arrange(SepalLengthCm)
iris %>% #decreasing
  arrange(desc(SepalLengthCm))

#create new variable
iris %>%
  mutate(SepalArea = SepalLengthCm * SepalWidthCm)

#plotting data
ggplot(iris, aes(x = Species, y = SepalLengthCm, color = Species)) +
  geom_point()

#calcualte mean
iris %>%
  summarise(meanFare = mean(PetalWidthCm))

iris %>%
  group_by(Species) %>%
  summarise(meanFare = mean(PetalWidthCm), numSurv = sum(PetalWidthCm)/n())

#Reference
#https://www.datacamp.com/community/tutorials/tidyverse-tutorial-r