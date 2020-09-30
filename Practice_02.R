# Data about cars ---------------------------------------------------------
print(mtcars) # from datasets package
mtcars2 = mtcars[1:5, ]

# Bar charts --------------------------------------------------------------
series = mtcars2[, "mpg"] # extract myles per gallon

barplot(series) # no car models..

cars = rownames(mtcars2)
barplot(series, names.arg = cars)

# Other parameters similar to plot() function
barplot(series, names.arg = cars, col = "red")
barplot(series, names.arg = cars, col = c(1:5), main = "Myles per model",
        ylab = "Gallons", density = c(2, 5, 10, 20, 40))

# Histograms --------------------------------------------------------------
series = mtcars[, "mpg"]
hist(x = series)
hist(x = series, breaks = 2, main = "Hist", col = "red") # modify breaks argument

# Density plot ------------------------------------------------------------
density = density(series) # calculate density
plot(density) # plot density

# Pie Charts --------------------------------------------------------------
data1 = c(1:5)
pie(data1)

# Usually percentages are represented with pie charts
data2 = data1/sum(data1)*100
data2 = round(data2, 1)
pie(data2)

data_labels = paste(data2, "%", sep="")
pie(data2, labels = data_labels, main = "Pie chart")

# Exporting graphs --------------------------------------------------------
# Using R functions
png("pie chart.png")
pie(data2, labels = data_labels, main = "Pie chart")
dev.off()

pdf("pie chart.pdf")
pie(data2, labels = data_labels, main = "Pie chart")
dev.off()

# Line plots --------------------------------------------------------------
bod = BOD[, "demand"] # Biochemical Oxygen Demand - USA

plot(bod)
plot(bod, type = "l")
plot(bod, type = "o")
plot(bod, type = "b", col = "blue")
plot(bod, type = "o", col = "red", lwd = 3)



# Change axis labels
plot(bod, type = "o", col = "red", xlab = 'Time', 
     ylab = 'Demand', main = "Biochemical Oxygen Demand", axes = F)


# Add lines
bod2 = bod - 1
lines(bod2, lty = 2, col = "blue", type = "o")
# prirasyti lty = 2, col = "blue"


# Modify axis
axis(side = 1, at = 1:6, labels = 2001:2006)
axis(side = 2, at = seq(0, 21, by = 2))

# Scatter plots -----------------------------------------------------------
# Very similar to line - just provide both x and y data
x = c(1:10, 15)
y = x^2

plot(x = x, y = y)
# Everything else is the same as in line plots
plot(x = x, y = y, lwd = 3, col = "blue", type = "b",
     main = "Square function")

# Intro to 3D graphs ------------------------------------------------------
install.packages("rgl") # install needed library
library("rgl")

# Create third variable
z = y^2

# Plot 3d scatter plot
?plot3d
plot3d(x, y, z, col="red", size = 5)






