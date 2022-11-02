library(graphics)
pokemon = read_csv("S:/coding/py bootcamp/Python-for-Data-Science--master/pokemon.csv")
colnames(pokemon)
plot(pokemon$height,pokemon$weight,xlab = "id values",ylab = "species vlaues",col=c("blue","red"))

plot(pokemon$height,col="blue",ylab = "height values",main="height plot ");

plot(head(pokemon$id,20),head(pokemon$height,20),pch=15,col=c("red","blue"),xlab = "id ",ylab="height",main="plot id-height")
barplot(pokemon$height,col="red",xlab="height ",ylab="index values");


barplot(pokemon$base_experience,pokemon$height,col=c("red","blue"),xlab="base experience",ylab="height values",main="relation between experience-height");

barplot(head(pokemon$id),col="blue",main="first few valeus plot",xlab="id values",ylab="index values");

hist(pokemon$weight,col="blue")

hist(pokemon$id,pokemon$height,breaks=20,col=c("red","blue"));

hist(pokemon$height,col="green")



