####Reading the dataset####
mba<- read.csv(file.choose())
View(mba)
attach(mba)

####EDA####
####Step-1: Check for Missing values####
library(DataExplorer)
plot_missing(mba)
plot_intro(mba) # plots continuous, missing, discrete columns and complete and missing observations
create_report(mba) #creates detailed report 

is.na(mba) #to check missing values- use only for smaller datasets

#Structure of dataset
str(mba)

####Step-2:1st-4th Moment business decisions####

"1st moment business decision: Measures of Central Tendency"
#Mean
mean(mba$workex)
mean(gmat)
#Median
median(workex)
median(gmat)
#Mode has no built-in functions, so we need to create a function
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
Mode(gmat)
Mode(workex)

####2nd moment business decision: Measures of Dispersion####
#Variance
var(workex)
var(gmat)
#Standard Deviation
sd(workex)
sd(gmat)
#Range
range1<- max(gmat)-min(gmat)
range1
range2<- max(workex)-min(workex)
range2
#inbuilt function
range(gmat)
####3rd moment business decision: Skewness####
library(psych)
skew(workex)
skew(gmat)

####4th moment business decision:Kurtosis####
kurtosi(workex)
kurtosi(gmat)

####Data Visualization####
#barplot
barplot(mba$workex)
barplot(mba$gmat)

#histogram
hist(workex)
hist(gmat)

#density
plot(density(gmat))
plot(density(workex))

#boxplot
boxplot(workex)
boxplot(gmat,outline = T)
boxplot(mba)
boxplot(gmat, horizontal = TRUE)
summary(mba)

#QQ plot
qqnorm(gmat)
qqline(gmat)

qqnorm(workex)
qqline(workex)

#logarithmic transformation
lt<- log(workex)
lt
qqnorm(lt)
qqline(lt)

#exponential transformation
et<- exp(workex)
et
qqnorm(et)

#squareroot transformation
st<- sqrt(workex)
st
qqnorm(st)

#####Shapiro-Wilk test for Normality#####
shapiro.test(workex)
shapiro.test(gmat)

####Standardization####
std_mba<- scale(mba)
View(std_mba)

std_gmat<- scale(gmat)

####Normal distribution####
#1
pnorm(680,711,29)
#2
e<- pnorm(697,711,29)
f<- pnorm(740,711,29)
e-f

####Calculating Z-value: 90%, 95% & 99%####
#95%
qnorm(0.975)
#1.959-> 1.96

#90%
qnorm(0.95)
#1.64

#99%
qnorm(0.995)
#2.575-> 2.58

####Calculating t-value####
qt(0.975,139)

####Dummy Variables#####
fastDummies_example <- data.frame(numbers = 1:3,
                                  gender  = c("male", "male", "female"),
                                  animals = c("dog", "dog", "cat"),
                                  dates   = as.Date(c("2012-01-01", "2011-12-31",
                                                      "2012-01-01")),
                                  stringsAsFactors = FALSE)
knitr::kable(fastDummies_example)

results <- fastDummies::dummy_cols(fastDummies_example)
knitr::kable(results)

results <- fastDummies::dummy_cols(fastDummies_example, remove_first_dummy = TRUE)
knitr::kable(results)