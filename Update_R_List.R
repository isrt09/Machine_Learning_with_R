employees <- list(names=c("Mark", "Tom", "Laura", "Sandra"),
                  age=c(49, 28, 35, 25),
                  gender=c("m", "m", "f", "f"),
                  salary=c(75000, 62000, 55000, 46000),
                  manager=c(TRUE, FALSE, FALSE, FALSE))

employees2 <- list(c("Mark", "Tom", "Laura", "Sandra"),
                  c(49, 28, 35, 25),
                  c("m", "m", "f", "f"),
                  c(75000, 62000, 55000, 46000),
                  c(TRUE, FALSE, FALSE, FALSE))

class(employees)

typeof(employees)

str(employees)

names(employees)

lunch <- list(Fred=c("omelette", "fried potatos", "chicken", "icecream"),
              Jack=c("salad", "beef steak"),
              Peter=c("salad", "lasagna", "pancakes"),
              bill = 100)

employ <- vector(mode = "list")

class(employ)

employ[["names"]] <- c("Mark", "Tom", "Laura", "Sandra")

employ[["age"]] <- c(49, 28, 35, 25)

employ[["gender"]] <- c("m", "m", "f", "f")

employ[["salary"]] <- c(75000, 62000, 55000, 46000)

employ[["manager"]] <- c(TRUE, FALSE, FALSE, FALSE)

employees <- list(names=c("Mark", "Tom", "Laura", "Sandra"),
                  age=c(49, 28, 35, 25),
                  gender=c("m", "m", "f", "f"),
                  salary=c(75000, 62000, 55000, 46000),
                  manager=c(TRUE, FALSE, FALSE, FALSE))

employees[["names"]]

x <- employees[["names"]]

class(x)

typeof(x)

employees[["age"]]

employees[[1]]

employees[[5]]

employees[["names"]][3]

employees[[1]][3]

employees[[c(1,3)]]

employees[["salary"]][2]

employees[[4]][2]

employees[[c(4,2)]]
   
employees[["salary"]][1:3]

employees[["salary"]][c(1,4)]

employees[["salary"]][-2]

employees[["age"]][-1:-3]

employees <- list(names=c("Mark", "Tom", "Laura", "Sandra"),
                  age=c(49, 28, 35, 25),
                  gender=c("m", "m", "f", "f"),
                  salary=c(75000, 62000, 55000, 46000),
                  manager=c(TRUE, FALSE, FALSE, FALSE))

employees

employees$names

employees$gender

employees$salary

employees$salary[2]

employees$salary[2:4]

employees$salary[-1]

emp2 <- list(age=employees$age, salary=employees$salary)

class(emp2)

employees <- list(names=c("Mark", "Tom", "Laura", "Sandra"),
                  age=c(49, 28, 35, 25),
                  gender=c("m", "m", "f", "f"),
                  salary=c(75000, 62000, 55000, 46000),
                  manager=c(TRUE, FALSE, FALSE, FALSE))

employees[["salary"]][2] <- 64000

employees$salary[2] <- 64000

employees[["manager"]][3] <- TRUE

employees[["salary"]] <- c(85000, 70000, 69000, 48000)

employees <- list(names=c("Mark", "Tom", "Laura", "Sandra"),
                  age=c(49, 28, 35, 25),
                  gender=c("m", "m", "f", "f"),
                  salary=c(75000, 62000, 55000, 46000),
                  manager=c(TRUE, FALSE, FALSE, FALSE))

employees$hours <- c(200, 220, 235, 215)

employees$hours <- NULL

employees[["names"]][5] <- "Ken"

employees[["age"]][5] <- 58

employees[["gender"]][5] <- "m"

employees[["salary"]][5] <- 43000

employees[["manager"]][5] <- FALSE

lapply(carspec, mean)

l <- lapply(carspec, mean)

class(l)

typeof(l)

lapply(carspec, sd)

lapply(carspec, sum)

lapply(carspec, prod)

lapply(carspec, cumsum)

lapply(carspec, cumprod)

lapply(carspec, log)

f <- function (x) { x^2 + 3 * x }

lapply(carspec, f)

sapply(carspec, mean)

s <- sapply(carspec, mean)

class(s)

typeof(s)

names(s)

s <- sapply(carspec, mean, simplify = FALSE)

class(s)

carspec2 <- list(make=c("Toyota", "Honda", "Renault", "Mazda", "Volkswagen", "BMW"),
                 engine=c(1.8, 3.2, 3.5, 1.8, 2.8, 4.2),
                 horse=c(140, 225, 210, 150, 200, 310),
                 weight=c(2639, 3517, 3850, 2998, 3561, 3902))

lapply(carspec2, mean)

sapply(carspec2, mean)

price <- c(21.5, 28.4, 42.0, 23.9, 33.9, 62.0, 26.9, 33.4, 39, 21.9)

engine <- c(1.8, 3.2, 3.5, 1.8, 2.8, 4.2, 2.5, 2.8, 2.8, 3.1)

horse <- c(140, 225, 210, 150, 200, 310, 170, 193, 195, 175)

fit <- lm(price~engine+horse)

typeof(fit)

names(fit)

fit$coefficients

fit$coefficients[2]

fit$coefficients[1]

fit$call

fit$model

fit$fitted.values

fit$residuals
