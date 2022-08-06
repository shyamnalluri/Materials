#####PCA#####
#Loading dataset
mydata<-read.csv(file.choose()) 
View(mydata)

View(mydata[-1]) 
data <- mydata[-1] #Considering only numerical values for applying PCA
attach(data)
cor(data)
pcaObj<-princomp(mydata[-1], cor = TRUE, scores = TRUE, covmat = NULL)
summary(pcaObj)

str(pcaObj)
loadings(pcaObj) #weights

plot(pcaObj) # graph showing importance of principal components 
# Comp.1 having highest importance (highest variance)

biplot(pcaObj)
pcaObj$scores[,1:3] # Top 3 PCA Scores which represents the whole data

######PCA for Clustering######

# cbind used to bind the data in column wise
# Considering top 3 principal component scores and binding them with mydata
mydata<-cbind(mydata,pcaObj$scores[,1:3])
View(mydata)

# preparing data for clustering (considering only pca scores as they represent the entire data)
clus_data<-mydata[,8:10]

# Normalizing the data 
norm_clus<-scale(clus_data) # Scale function is used to normalize data
dist1<-dist(norm_clus,method = "euclidean") # method for finding the distance

# Clustering the data using hclust function --> Hierarchical
fit1<-hclust(dist1,method="complete") # method here is complete linkage

plot(fit1) # Displaying Dendrogram

groups<-cutree(fit1,5) # Cutting the dendrogram for 5 clusters

membership_1<-as.matrix(groups) # cluster numbering 

View(membership_1)

final1<-cbind(membership_1,mydata) # binding column wise with orginal data
View(final1)
View(aggregate(final1[,-c(2,9:11)],by=list(membership_1),FUN=mean)) # Inferences can be
# drawn from the aggregate of the universities data on membership_1

write.csv(final1,file="universities_clustered.csv",row.names = F,col.names = F)
getwd()
