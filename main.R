library(help="graphics");
airquality=read.delim(file.choose(),header = T)

print(airquality);

#airquality.head();
head(airquality,n=10);

#tail for get the data from at last of your dataset

tail(airquality,n=5);


#now we are comparing two rows and display the plot
plot(airquality$Temp,airquality$Month,ylab="months",xlab="temperature",type='p',col=c('red','blue'));
#plot(warning()) 

plot(airquality$Ozone,airquality$Wind,pch=15,main="Comparission of ozone and wind",ylab="wind flow",xlab="ozone values",col=c("red","blue"));
plot(airquality$Temp,col='red');


#corrgram(x, order = , panel=, lower.panel=, upper.panel=, text.panel=, diag.panel=)

hist(airquality$Wind,col='blue',xlab="wind values",main="Wind Frequency");



barplot(airquality$Wind,main="Air flow in the city",xlab="Air level",col='red');
  hist(airquality$Solar.R)
boxplot(airquality$Solar.R)

plot(airquality,col='blue');




par(mfrow=c(2,2))

colnames(LungCapData);
x=head(LungCapData$Height);
lab=head(LungCapData$Age)

pie(x,lab)
pie(x,lab,col=rainbow(length(x)))
library(plotrix)
#install.packages("plotrix")
#pie3D(x,lab, radmain = "Pie Chart Age ")

library("plotrix")
pie3D(tail(LungCapData$Age),labels =tail(LungCapData$Height), radius = 1.5, col = c("#999999", "#E69F00", "#56B4E9"),explode = 0.1);












