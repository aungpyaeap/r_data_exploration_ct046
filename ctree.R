# EXample 1 using library data
library(party)
print(head(readingSkills))

input.dat<-readingSkills[c(1:105),] #create the input data frame
#png(file="decision_tree.png") #giv the chart file name
output.tree <- ctree(nativeSpeaker ~ age + shoeSize + score, data = input.dat) #create the tree
plot(output.tree) #plot the tree
#dev.off() #save the file

# Example 2 using BreastCancer data
library(party)
breast_data <- read.csv("BreastCancer.csv")
breast_data <- breast_data[,1:11]
print(head(breast_data))

input.dat <- breast_data[c(1:11)]
output.tree <- ctree(X ~ V1 + V2 + V3 + V4 + V5 + V6 + V7 + V8 + V9 + V10, data = input.dat)
plot(output.tree)
