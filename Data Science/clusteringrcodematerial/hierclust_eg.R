######HIERARCHICAL CLUSTERING#####
#Reading an excel file
library(readxl)
input<-read_xlsx(file.choose())
View(input)
univ<- input[,c(1,3:8)]
View(univ)

#Normalizing data- excluding university name column
normalized_data<-scale(univ[,2:7]) 
View(normalized_data)

#Distance matrix
d <- dist(normalized_data, method = "euclidean") 
fit <- hclust(d, method="complete")

#Displaying the dendrogram
plot(fit) 
plot(fit, hang=-1)
groups <- cutree(fit, k=5) # cut tree into 5 clusters
rect.hclust(fit, k=5, border="red") #Giving a red border to clusters

membership<-as.matrix(groups)
final <- data.frame(univ, membership)
final1 <- final[,c(ncol(final),1:(ncol(final)-1))]
View(final1)

#Write the data into an excel
library(xlsx)
write.xlsx2(final1, file="final1.xlsx")
