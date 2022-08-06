### On inbuilt Data set- Groceries #####
library(arules)
library(arulesViz)
data("Groceries")
summary(Groceries)
inspect(Groceries[1:10])
rules <- apriori(Groceries,parameter = list(support = 0.002,confidence = 0.05,minlen=5))
inspect(rules[1:5])
windows()
plot(rules,method = "scatterplot")
head(quality(rules))
plot(rules,method = "grouped")
plot(rules,method = "graph")
plot(rules,method = "mosaic")

rules <- sort(rules,by="lift")

inspect(rules[1:4])

######BOOK dataset######
book<-read.csv(file.choose())
View(book)
book_trans<-as(as.matrix(book),"transactions")
inspect(book_trans[1:100])

# Perform apriori algorithm 
rules<-apriori(as.matrix(book),parameter = list(support=0.002,confidence=0.5))

inspect(rules[1:100])
plot(rules)

head(quality(rules))
plot(rules,method = "grouped")