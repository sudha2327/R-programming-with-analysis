
pokemon=read.csv("S:\\coding\\py bootcamp\\Python-for-Data-Science--master\\pokemon.csv",header=TRUE);
print(pokemon);

mean(pokemon$weight)
median(pokemon$id)
var(pokemon$height)
sd(pokemon$base_experience)
scale(pokemon$base_experience)
sort(pokemon$hp)
sort(pokemon$hp)[86]
rank(pokemon$height)
rank(-pokemon$height)

rank(pokemon$weight, ties.method= "average")	
rank(pokemon$weight, ties.method="min")		
rank(pokemon$height,ties.metho="max")
quantile(pokemon$weight)



