#create data frame

df = data.frame(col1 = 1:4, col2 = 4:7, col3 = 7:10)

class(df)

#creat matrix
mat = matrix(1:10, nrow = 5, ncol = 2)

class(mat)

#one dimensional data
onedim = df$col1
onedim

class(onedim)

char = as.character(onedim)
class(char)

fac = as.factor(onedim)
class(fac)

# print letters

letters[1:20]
LETTERS[1:20]

# print repeated elements
rep(1,3)
rep("a",20)

#create dataframe
df = data.frame(col1 = letters[1:20], col2 = rep("a", 20), col3 = 1:20)

# 
class(df)
str(df)
dim(df)

#print head and tail
head(df)
tail(df)

#check duplicates
duplicated(df$col1)
table(duplicated(df$col1))

duplicated(df$col2)
table(duplicated(df$col2))

!duplicated(df$col2)
table(!duplicated(df$col2))

# check unique
unique(df$col2)
unique(df$col1)

# number of elements
length(df$col1)

length(df$col2)

#set operations
intersect(df$col1, df$col2)
union(df$col1, df$col2)
setdiff(df$col1, df$col2)

#package installation
install.packages("gapminder")
library(gapminder)

#explore gapminder
head(gapminder)
dim(gapminder)
str(gapminder)
summary(gapminder)


#documentaion
?gapminder

#install dplyr
install.packages("dplyr")

#load libraries
library(dplyr)
library(gapminder)

?dplyr

head(gapminder)

#extract column by 'select()'
select(gapminder, country)
select(gapminder, country, continent)
select(gapminder, -country)
select(gapminder, -country, -continent)

#get columns by partial matching of column names
select(gapminder, starts_with("c"))
select(gapminder, ends_with("p"))
select(gapminder, contains("co"))

#extract row by 'filter()'
temp = filter(gapminder, country != "Afghanistan")

temp2 = filter(gapminder, country %in% c("Afghanistan", "Australia"))

temp3 = filter(gapminder, year >= 1952, lifeExp >=40)







