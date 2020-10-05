demo <- read.csv("demographics.csv")

### create the initial table (with the counts only)

mytable <- table(demo$educ, exclude = NULL)  ### the missing values will be excluded

print(mytable)

### compute the cumulative counts (using the cumsum fuction)

cumul <- cumsum(mytable)

print(cumul)

### compute the relative frequencies

relative <- prop.table(mytable)

print(relative)

### compute the cumulative relative frequencies

n <- nrow(demo)  ### number of rows (cases) of the data frame demo

cumulfreq <- cumul/n

print(cumulfreq)

### create the final table with the cbind function

mytable2 <- cbind(Freq=mytable, Cumul=cumul, Relative=relative, CumFreq=cumulfreq)

print(mytable2)

require(plyr)

### build the initial table, with the absolute frequencies

mytable <- count(demo, 'educ')

print(mytable)

# compute the percentages (relative frequencies)

perc <- mytable$freq/nrow(demo)

print(perc)

### compute the cumulative counts

cumul <- cumsum(mytable$freq)

print(cumul)

### compute the cumulative percentages

cumperc <- cumul/nrow(demo)

print(cumperc)

# add the cumulative counts and the percentages to the iniatial table

mytable <- cbind(mytable, cumul, perc, cumperc)

print(mytable)
