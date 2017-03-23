#question 5 work on data frame

#remove items with NA in Ranking from total, i couldnt get the table right without this
total <- total[which(!is.na(total$Ranking)),]

#cut into 5 quantile groups
total$quantile <- with(total, cut(GDP, breaks=quantile(GDP, probs=c(0,.2,.4,.6,.8, 1),na.rm=TRUE), include.lowest=TRUE))

#create table 
table5 <- table(total$quantile, total$Income.Group)

#change row names to be more pretty, i couldn't figure out how to do this above with a labels command or anything
rownames(table5) <- c("Q1", "Q2", "Q3", "Q4", "Q5")