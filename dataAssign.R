df=ChickWeight
#a)construct weight vs time fro chock 34
x<-split(df,df$Chick)
newdf=x['34']
newdf=as.data.frame(newdf)
plot(newdf$X34.Time,newdf$X34.weight,ylim=c(30,400),xlim=c(0,22),xlab='Time',ylab = 'Weight',main= 'weight against time for chick number 34')

x1<-split(df,df$Diet)
diet_df=x1['4']
diet_df=as.data.frame(diet_df)
boxplot(X4.weight ~ X4.Time, data= diet_df, xlab = "TIME", ylab = "WEIGHT", main = "WEIGHT VS TIME BOXPLOT")


df_mean_wt=aggregate(diet_df[,1],list(diet_df$X4.Time),mean)
colnames(df_mean_wt)<-c("Time","MeanWeight4")
df_mean_wt
plot(df_mean_wt$Time,df_mean_wt$MeanWeight,ylim=c(30,400),xlim=c(0,22),xlab='Time',ylab = 'MeanWeight',main= 'Mean weight against time for chicks with diet rating 4')



diet2_df=x1['2']
diet2_df=as.data.frame(diet2_df)
df_mean_wt2=aggregate(diet2_df[,1],list(diet2_df$X2.Time),mean)
df_mean_wt2
df_mean_wt$MeanWeight2=c(df_mean_wt2$x)
df_mean_wt
y1_val=c(df_mean_wt$MeanWeight4)
y2_val=c(df_mean_wt$MeanWeight2)
plot(y1_val,type="o",col="red",xlab="Time",ylab="Mean Weight",main="Mean weight vs Time")
lines(y2_val,type="o",col="green")


legend("topleft",legend = c("Mean weight for group 4","Mean weight for group 2"),lwd=2,col=c("red","green"))




