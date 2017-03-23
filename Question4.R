#here i plot the graph for question 4
#i do GDP vs Ranking (x axis vs y axis) because I found using Country Code was
#way too messy for my liking. I converted the Ranking column to numeric earlier
#so that this would look correct. if you leave it as a factor, it show them in
#the wrong order


library(ggplot2)

#make graph window big
plot.window(c(0,500),c(0,10000))

#store graph to gg, set color to Income Group
gg <- qplot(GDP, Ranking,data=subset(total, !is.na(Ranking)), color=Income.Group, na.rm=TRUE, main="GDP by Ranking", ylab="Ranking", xlab="GDP")