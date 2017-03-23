#this file is for the question 3 OECD data
#I'm going to create two vectors to hold the data for high OECD and high
#non-OECD countries, then calculate the means of each of them and print it out

#ranking stored as character variables in these character vector, ill convert later
hiOECD = character()
hiNonOECD = character()


#i originally had this as one loop with an if else but in the process 
# of debugging it became two, and i just left it this way. probably not efficient 
#but i didn't think it was necessary to fix

#two for loops to check for the condition and store the ranking at the end of the vector
i=1
for (i in 1:x) {
  if (total$Income.Group[i] == "High income: nonOECD"){
    hiNonOECD <- c(hiNonOECD, as.character(total$Ranking[i]))
  }
}
i=1
for (i in 1:x){
  if (total$Income.Group[i] == "High income: OECD"){
    hiOECD <- c(hiOECD, as.character(total$Ranking[i]))
  }
}


#i found that if i tried to do this as as one as.numeric(as.character()) on the
#factor from the data frame, it didn't work
#convert to numeric so i can do the means

hiNonOECD <- as.numeric(hiNonOECD)
hiOECD <- as.numeric(hiOECD)

