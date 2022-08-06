#####MULTIPLE LINEAR REGRESSION & VARIOUS MODELS#####
#Extracting data
cars<- read.csv(file.choose())
View(cars)
attach(cars)

#EDA
summary(cars)

#Correlation between MPG and the predictors
pairs(cars)

#correlation Coefficient
plot(HP,SP)
plot(VOL,WT)

#Correlation Coeffiecent matrix
cor(cars)

#Partial Correlation matrix
library(corpcor)
cor2pcor(cor(cars))

#The Linear Model of interest
model.car <- lm(MPG~VOL+HP+SP+WT)
summary(model.car)

#Prediction- Volume 
model.carV<-lm(MPG~VOL)
summary(model.carV) 
#Volume became significant

#Prediction- Weight
model.carW<-lm(MPG~WT)
summary(model.carW) 
#Weight became significant

#Prediction- Volume and Weight
model.carVW<-lm(MPG~VOL+WT)
summary(model.carVW) 
#Both became Insignificant
#So,there exists a collinearity problem between volume and weight.

### Scatter plot matrix along with Correlation Coefficients
panel.cor<-function(x,y,digits=2,prefix="",cex.cor)
{
  usr<- par("usr"); on.exit(par(usr))
  par(usr=c(0,1,0,1))
  r=(cor(x,y))
  txt<- format(c(r,0.123456789),digits=digits)[1]
  txt<- paste(prefix,txt,sep="")
  if(missing(cex.cor)) cex<-0.4/strwidth(txt)
  text(0.5,0.5,txt,cex=cex)
}
pairs(cars,upper.panel = panel.cor,main="Scatter plot matrix with Correlation coefficients")

#It is Better to delete influential observations rather than deleting entire column which is 
#costliest process

#Deletion Diagnostics for identifying influential observations
influence.measures(model.car)

library(car)

#Plotting Influential measures 
influenceIndexPlot(model.car,id.n=3) # index plots for infuence measures
influencePlot(model.car,id.n=3) # A user friendly representation of the above

#Regression after deleting the 77th observation, which is influential observation
model.car1<-lm(MPG~VOL+SP+HP+WT,data=cars[-77,])
summary(model.car1)

#Regression after deleting the 77th & 71st Observations
model.car2<-lm(MPG~VOL+SP+HP+WT,data=cars[-c(71,77),])
summary(model.car2)

#Variance Inflation factor to check collinearity between variables 
vif(model.car)
##vif>10 then there exists collinearity among all the variables 

#Added Variable plot to check correlation b/n variables and o/p variable
avPlots(model.car,id.n=2,id.cex=0.7)

##VIF and AV plot has given us an indication to delete "wt" variable

#Final model
finalmodel<-lm(MPG~VOL+SP+HP)
summary(finalmodel)

# Evaluate model LINE assumptions 

#Residual plots,QQplot,std-Residuals Vs Fitted,Cook's Distance 
qqPlot(finalmodel,id.n = 5)
# QQ plot of studentized residuals helps in identifying outlier 
