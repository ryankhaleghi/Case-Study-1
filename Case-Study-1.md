Case Study 1
================
Ryan Khaleghi
3/07/2017

``` r
#set working directory
setwd("/Users/Ryan/Desktop/Programming/SMU/Doing Data Science/Case-Study-1")

#this section gathers the data from 2 csv files
source ("gather.r")

#this section cleans up the data by changing column names and merging the two files
suppressWarnings(source ("tidy.r"))
```

Introduction

The Organization for Economic Co-operation and Development (OECD) and FedStats both collect extensive economic data about countries around the world. We can use this data to perform an analysis of different countries and compare their Gross Domestic Products (GDP).

Using the FedStats and OECD data, we can rank the countries of the world by GDP, from highest (rank 1) to lowest. Due to various issues, such as the availability of data and small country size, some countries are not ranked. We see that

\`{r} \#for question 1, count the number of items that don't have a Ranking, since everything in the GDP file has a ranking and we can use this to count the missing items

i=1 count = 0 for (i in 1:x){ if (total$Ranking\[i\] == ""){ count = count + 1 } } \#answer to question 1, 35 print (count) \` countries do not have a ranking in our analysis.

Question 2

``` r
source ("tidy2.r")

#answer to  question 2, KNA St. Kitts and Nevis
print(total$CountryName[13])
```

    ## [1] St. Kitts and Nevis
    ## 230 Levels:    East Asia & Pacific   Euro area ... Zimbabwe

Question 3

``` r
#for question 3, create two new vectors for the high income: OECD and high income: non-OECD items, then get averages
source ("question3.r") 

#non OECD has a lot of missing rankings, so I'm going to use na.rm to not count them in the mean
#answer to question 3, 91.91304 for non OECD, 32.9667 for OECD
print(mean(hiNonOECD, na.rm=TRUE))
```

    ## [1] 91.91304

``` r
print(mean(hiOECD, na.rm=TRUE))
```

    ## [1] 32.96667

Question 4

``` r
#question 4, plot the GDP for all countries
source ("question4.r") 

gg
```

![](Case-Study-1_files/figure-markdown_github/unnamed-chunk-4-1.png)

``` r
#convert scale for GDP to log10 so it's more clear, just for kicks
#gg + scale_x_log10()
```

Question 5

``` r
#question 5, answer is 5 countries

source ("question5.r")
table5
```

    ##     
    ##         High income: nonOECD High income: OECD Low income
    ##   Q1  0                    2                 0         12
    ##   Q2  0                    6                 1         16
    ##   Q3  0                    7                 2          8
    ##   Q4  0                    7                10          1
    ##   Q5 14                    1                17          0
    ##     
    ##      Lower middle income Upper middle income
    ##   Q1                  16                  11
    ##   Q2                   9                   8
    ##   Q3                  14                  10
    ##   Q4                  12                  10
    ##   Q5                   3                   6

Conclusion
