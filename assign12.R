library(readr)
insurance <- read_csv("S:/coding/R/R datasAnly/insurance.csv")
View(insurance)


boxplot(charges~sex,data=insurance,col=c("orange","red"),main="Box plot Charges vs Sex")

ksplit=split(insurance[7],insurance$sex)
ksplitm=ksplit['male']
ksplitm=as.data.frame(ksplitm)
ksplitf=ksplit['female']
ksplitf=as.data.frame(ksplitf)


par(mfrow=c(1,2))
hist(ksplitm$charges,col='blue',ylim=c(0,200),main="Male Histogram",xlab = "Charges")
hist(ksplitf$charges,col='red',ylim=c(0,200),main="Female Histogram",xlab = "Charges")



  