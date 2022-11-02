library(graphics)
oz <- read_excel("S:/coding/R/R datasAnly/oz.xls")
View(oz)
barplot(oz$income,col="red",ylab = "income",xlab = "ration",main="income and ratio")

barplot(tail(oz$income),col="blue")
plot(head(oz$consumption),head(oz$income),col=c("red","blue"),pch=15)

colnames(oz)
x=head(oz$income);
lab=head(oz$consumption);
pie(x,lab,col=rainbow(length(x)))

hist(oz$income,col="blue",xlab ="income",main="income vlaues")

