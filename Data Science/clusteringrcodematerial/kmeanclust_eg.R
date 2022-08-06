#####K-MEANS CLUSTERING#####

#plyr package- used for splitting & combining data
library(plyr)

#Generating 50 random numbers using uniform distribution (Normal distribution)
x <-  runif(50) 
x
y <-  runif(50)
y

#Combine x & y values
data <- cbind(x,y) 
data
plot(data)

#Providing row numbers instead on points
plot(data, type="n")
text(data, rownames(data))

#k-means clustering
km <- kmeans(data,4) #randomly select k
str(km)
summary(km)
#withinss---> within sum of squares
#betweenss--> between sum of squares
km$centers
km$cluster

library(animation)
km <- kmeans.ani(data, 4)
str(km)

#####CHOOSING K-MEANS#####

"elbow curve & k ~ sqrt(n/2) to decide the k value"
#Determine number of clusters by scree-plot- within sum of squares
wss = (nrow(normalized_data)-1)*sum(apply(normalized_data, 2, var))		 
for (i in 2:8) wss[i] = sum(kmeans(normalized_data, centers=i)$withinss)
plot(1:8, wss, type="b", xlab="Number of Clusters", ylab="Within groups sum of squares")   # Look for an "elbow" in the scree plot #
title(sub = "K-Means Clustering Scree-Plot")

"selecting K for kmeans clustering using kselection package"
#Using iris dataset
View(iris)
library(kselection)
k <- kselection(iris[,-5], parallel = TRUE, k_threshold = 0.9, max_centers=12)

library(doParallel)
registerDoParallel(cores=2) #Choose core according to the user system cores
k <- kselection(iris[,-5], parallel = TRUE, k_threshold = 0.9, max_centers=12)
k

#####Using University dataset#####
#Inserting dataset
library(readxl)
input<-read_xlsx(file.choose())
univ<- input[1:25,c(1,3:8)]

#Normalizing data
normalized_data<-scale(univ[,2:7])
View(normalized_data)

#Choosing k as 4
fit <- kmeans(normalized_data, 4)
final2<- data.frame(univ, fit$cluster) # append cluster membership
final2

#Giving cluster membership to rows of dataset
final3 <- final2[,c(ncol(final2),1:(ncol(final2)-1))]
aggregate(univ[,2:7], by=list(fit$cluster), FUN=mean)

#####CLARA#####
# k clustering alternative for large dataset - Clustering Large Applications (Clara)
library(cluster)
xds <- rbind(cbind(rnorm(5000, 0, 8), rnorm(5000, 0, 8)), cbind(rnorm(5000, 50, 8), rnorm(5000, 50, 8)))
#rnorm(number of entries,mean,sd)
xcl <- clara(xds, 3, sample = 100)
clusplot(xcl)

#####MEDIODS####
#Similar concept to centroids, except mediods are the members of the dataset
#Partitioning around medoids
xpm <- pam(xds, 2)
clusplot(xpm)
