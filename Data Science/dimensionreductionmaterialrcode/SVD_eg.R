#####SVD######
#Creating a data matrix
A = as.matrix(data.frame(c(4,7,-1,8), c(-5,-2,4,2), c(-1,3,-3,6)))
A
#Computing SVD
A.svd <- svd(A)
A.svd

#####Image Processing#####
library(OpenImageR)
library(ripa)
x<- readImage(file.choose())
plot(x, useRaster = TRUE)
r <- imagematrix(x, type = "grey")
plot(r, useRaster = TRUE)

#applying svd
r.svd <- svd(r)
d <- diag(r.svd$d)
dim(d)
u <- r.svd$u
v <- r.svd$v
plot(1:length(r.svd$d), r.svd$d)

#first approximation
u1 <- as.matrix(u[-1, 1])
v1 <- as.matrix(v[-1, 1])
d1 <- as.matrix(d[1, 1])
l1 <- u1 %*% d1 %*% t(v1)
l1g <- imagematrix(l1, type = "grey")
plot(l1g, useRaster = TRUE)

#more approximation
depth <- 5
us <- as.matrix(u[, 1:depth])
vs <- as.matrix(v[, 1:depth])
ds <- as.matrix(d[1:depth, 1:depth])
ls <- us %*% ds %*% t(vs)
lsg <- imagematrix(ls, type = "grey")
plot(lsg, useRaster = TRUE)

depth <- 20
us2 <- as.matrix(u[, 1:depth])
vs2 <- as.matrix(v[, 1:depth])
ds2 <- as.matrix(d[1:depth, 1:depth])
ls2 <- us %*% ds %*% t(vs)
lsg2 <- imagematrix(ls, type = "grey")
plot(lsg, useRaster = TRUE)