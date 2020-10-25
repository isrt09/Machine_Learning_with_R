demo <- read.csv("demographics.csv")

View(demo)

demo2 <- cbind(demo$age, demo$income, demo$carpr)

colnames(demo2) <- c("age", "income", "price")

View(demo2)

require(psych)

describe(demo2)

describe(demo2, na.rm = TRUE, trim = 0.1, check = TRUE)

