#needs vector with column names to be added
colnames(gdp) <-c("CountryCode","Ranking", "blank","CountryName","GDP")

#merge into one data frame by Country Code
total <- merge(gdp, edu, by="CountryCode")

#create variable for the length of total to be used in for loops
x=nrow(total)