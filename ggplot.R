#install.packages("ggplot2")
library("ggplot2")
iris <- read.csv("Iris.csv")
iris = select(iris,-Id) #Remove Id
summary(iris)

staff <- read.csv("Data.csv")
summary(staff)

qplot(iris$SepalLengthCm, geom = "histogram")

ggplot(data=iris, aes(iris$SepalWidthCm)) + 
  geom_histogram()

# Histogram for PetalWidthCm
qplot(iris$PetalWidthCm,
      geom="histogram",
      main = "Histogram for PetalWidthCm", 
      xlab = "PetalWidthCm",  
      fill=I("green"), 
      col=I("red"))


ggplot(data=staff, aes(staff$Age)) + 
  geom_histogram(breaks=seq(20, 50, by=2), 
                 col="red", 
                 aes(fill=..count..)) +
  scale_fill_gradient("Count", low="green", high="red")



ggplot(data=staff, aes(staff$Age)) + 
  geom_histogram(breaks=seq(20, 50, by=2), 
                 col="red", 
                 fill="green", 
                 alpha = .2) + 
  labs(title="Histogram for Age")


ggplot(data=staff, aes(staff$Age)) + 
  geom_histogram(aes(y =..density..), 
                 breaks=seq(20, 50, by = 2), 
                 col="red", 
                 fill="green", 
                 alpha=.2) + 
  geom_density(col=2) + 
  labs(title="Histogram for Age", x="Age", y="Count")