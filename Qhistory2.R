getwd()
setwd("R in action")
getwd()
setwd("R-in-action")
ls
ls()
getwd()
source("R-practice/simple_functions.R")
getwd()
movies <- read.table("Webscraper/All Movies 2010 to 2014 Domestic Grosses.csv", sep=",", header=T, quote="\"", na.strings=c("-", "N/A"))
attach(movies)
detach(movies)
names(movies)
names(movies)[c(2,5,6,7)] <- c("Movie.Title", "Theaters.Total", "Opening.Gross", "Theaters.Opening")
names(movies)
source("R-practice/simple_functions.R")
movies <- rename_movie_headers(movies)
names(movies)
a_tst <- function(df) {}
a_tst <- function(df) {
}
source("R-practice/simple_functions.R")
remove(a_tst)
source("R-practice/simple_functions.R")
summary(movies)
movies <- read.table("Webscraper/All Movies 2010 to 2014 Domestic Grosses.csv", sep=",", header=T, quote="\"", na.strings=c("-", "N/A"))
movies <- format_for_model(movies)
movies <- format_for_model(movies)
source("R-practice/simple_functions.R")
movies <- format_for_model(movies)
summary(movies)
class(Total.Gross)
class(movies$Total.Gross)
class(movies$Open)
c("12/25", "9/19", "9/6", "9/20")
date <- c("12/25", "9/19", "9/6", "9/20")
as.Date(date[0])
date[0]
date
date[1]
as.date(date[1])
as.Date(date[1])
myformat <- "%m/%d"
as.Date(date, myformat)
library(lubridate)
install.packages("lubridate")
names(movies)
date
myformat
date2 <- c("4/20", "10/10", "3/4", "5/5")
date - date2
difftime(date, date2)
date <- as.Date(date, myformat)
date2 <- as.Date(date, myformat)
date
date2
difftime(date, date2)
date2 <- c("4/20", "10/10", "3/4", "5/5")
date2 <- as.Date(date2, myformat)
difftime(date, date2)
date
date2
date2[1]
date2[2]
date2[2] + 1
date2[2] + 365
open <- movies$Open
close <- movies$Close
myformat
class(open)
source("R-practice/simple_functions.R")
open <- convert_date(movies$Open)
class(open)
close <- convert_date(movies$Close)
difference <- difftime(open, close)
?difference
?difftime
difference
open
close
open[3109]
close[3109]
difftime(open[3109], close[3109])
difference <- difftime(open, close, units="days")
difference
lapply(difference, function(x){if (x<0) x <- x+365}
)
shift_date <- function(x) {
if(x < 0) x <- x+365
}
shift_date(-4)
shift_date <- function(x) {
if(x < 0) x <- x+365
return (x)
}
shift_date(-5)
lapply(difference, FUN=shift_date)
lapply(difference, function(x) { if (is.na(x)) return NA; ifelse (x<0, x <- x + 365, x); return (x)})
lapply(difference, function(x) { if (is.na(x)) return (NA); ifelse (x<0, x <- x + 365, x); return (x)})
test_func <- movies <- read.table("All Movies Domestic Grosses - formatted.csv", sep=",", header=T, quote="\"", na.strings=c("-", "N/A"))
test_func <- read.table("All Movies 2010 to 2014 Domestic Grosses.csv", sep=",", header=T, quote="\"", na.strings=c("-", "N/A"))
getwd()
getwd()
test_func <- read.table("All Movies 2010 to 2014 Domestic Grosses.csv", sep=",", header=T, quote="\"", na.strings=c("-", "N/A"))
test_func <- read.table("All Movies 2010 to 2014 Domestic Grosses.csv", sep=",", header=T, quote="\"", na.strings=c("-", "N/A"))
testing <- format_for_model(test_func)
summary(testing)
testing$duration <- difftime(convert_date(testing$Close), convert_date(testing$Open))
lapply(testing$duration, FUN=shift_date)
source("R-practice/simple_functions.R")
lapply(testing$duration, FUN=shift_date)
testing$duration <- lapply(testing$duration, FUN=shift_date)
summary(testing)
movies <- read.table("All Movies 2010 to 2014 Domestic Grosses.csv", sep=",", header=T, quote="\"", na.strings=c("-", "N/A"))
movies <- format_for_model(movies)
movies <- format_for_model(movies)
summary(movies)
source("R-practice/simple_functions.R")
movies <- format_for_model(movies)
summary(movies)
difference <- difftime(movies$Close, movies$Open, units = "days")
difference <- shift_date(difference)
source("R-practice/simple_functions.R")
difference <- difftime(movies$Close, movies$Open, units = "days")
different <- shift_date(difference)
difference
difference <- lapply(difference, FUN=shiftdaste)
difference <- lapply(difference, FUN=shiftdate)
difference <- lapply(difference, FUN=shift_date)
class(difference)
summary(difference)
difference <- difftime(movies$Close, movies$Open, units="days")
summary(difference)
difference[c(1:10)]
test <- shift_date(difference)
test <- lapply(difference, function(x){if (!is.na(x) & (x<0)) x <- x+365})
summary(test)
test[c(1:10)]
source("R-practice/simple_functions.R")
summary(difference)
difference[c(1:10)]
difference[1]
difference[1] + 365
test <- shift_date(difference)
test <- lapply(difference, FUN=shift_date)
test[c(1:10)]
movies$Open[c(1:10)]
movies$Open[c(1:10)] - movies$Close[c(1:10)]
delta <- movies$Close - movies$Open
class(delta)
test <- NULL
test <- shift_date(delta)
test <- lapply(delta, function(x){if ((!is.na(x)) & (x<0)) x<-x+365})
test[c(1:10)]
test <- as.vector(test)
test[c(1:10)]
class(delta)
movies$duration <- difftime(movies$Close, movies$Open, units="days")
movies$duration <- shift_date(movies$duration)
movies$duration <- difftime(movies$Close, movies$Open, units="days")
tst <- movies$duration[c(1:10)]
tst
tst + 365
if (tst < 0) tst <- tst + 365
tst
?apply
lapply(as.list(tst), FUN=shift_date)
lapply(as.vector(tst), FUN=shift_date)
a <- lapply(as.vector(tst), FUN=shift_date)
mean(a)
?mean
mean(a, na.rm=T)
a[1]
a[[1]]
source("R-practice/simple_functions.R")
test <- difftime(movies$Close, movies$Open, units = "days")
tst <- lapply(test, FUN=shift_date)
class(tst)
tst[1]
tst[2]
source("R-practice/simple_functions.R")
source("R-practice/simple_functions.R")
tst <- shift_date(test)
open <- movies$Open[c(1:10)]
close <- movies$Close[c(1:10)]
close-open
source("R-practice/simple_functions.R")
normalize_date(close, open)
normalize_date(as.numeric(close), as.numeric(open)
)
difference <- close-open
difference
for (i in c(1, length(difference))):
for (i in c(1, length(difference)))
if( (!is.na(difference[i])) & (difference[i] < 0)) difference[i] <- difference[i] + 365
difference
open-close
-111 + 365
difference[difference < 0]
difference[difference < 0] <- difference[difference <0] + 365
difference
difference[difference <0] + 365
-226 + 365
test <- difference[difference < 0]
test
difference <- close - open
difference
difference + 365
test <- difference[difference < 0]
test
test + 365
a <- test + 365
a
difference[difference < 0] <- a
difference
close - open
source("R-practice/simple_functions.R")
test <- shift_date(movies$Close - movies$Open)
source("R-practice/simple_functions.R")
test <- shift_date(movies$Close - movies$Open)
source("R-practice/simple_functions.R")
test <- shift_date(movies$Close - movies$Open)
class(test)
test[c(1:10)]
test
getwd()
source("R-practice/simple_functions.R")
movies <- read.table("All Movies 2010 to 2014 Domestic Grosses.csv", sep=",", header=T, quote="\"", na.strings=c("-", "N/A"))
movies_formatted <- format_for_model(movies)
source("R-practice/simple_functions.R")
movies_formatted <- format_for_model(movies)
summary(movies_formatted)
movies$duration
movies_formatted$duration
source("R-practice/simple_functions.R")
movies <- read.table("All Movies 2010 to 2014 Domestic Grosses.csv", sep=",", header=T, quote="\"", na.strings=c("-", "N/A"))
movies_formatted <- format_for_model(movies)
summary(movies_formatted)
open <- convert_date(movies$Open)
open
open <- movies$Open
open
my_format <- "%m%d"
open <- as.Date(open, my_format)
open[1]
open <- movies$Open
class(open)
open <- as.character(open)
open[1]
source("R-practice/simple_functions.R")
movies_formatted <- format_for_model(movies)
summary(movies)
summary(movies_formatted)
open <- movies$Open
open
open <- as.character(open)
open
open <- as.Date(open, "%m%d")
open
open <- as.character(movies$Open)
open[c(1:10)]
as.Date(open[c(1:10)])
as.Date(open[c(1:10)], "%m/%d")
source("R-practice/simple_functions.R")
movies_formatted <- format_for_model(movies)
summary(movies_formatted)
movies_formatted$duration[c(1:10)]
attach(movies_formatted)
mean(duration)
mean(duration, na.rm=T)
first_fit <- lm(Total.Gross ~ Theaters.Total * Theaters.Opening * Opening.Gross * duration, data=movies_formatted)
summary(first_fit)
second_fit <- lm(Total.Gross ~ Theaters.Total * Theaters.Opening * Opening.Gross * duration - Theaters.Total:Opening.Gross, data=movies_formatted)
summary(second_fit)
second_fit <- lm(Total.Gross ~ Theaters.Total * Theaters.Opening * Opening.Gross * duration - Theaters.Total:Opening.Gross - Theaters.Total, data=movies_formatted)
summary(second_fit)
par(mfrow=c(2,2))
plot(second_fit)
third_fit <- lm(Total.Gross ~ sqrt(Theaters.Total * Theaters.Opening * Opening.Gross * duration - Theaters.Total:Opening.Gross - Theaters.Total), data=movies_formatted)
l
s
a
residplot <-function(fit, nbreaks=10){
z <- rstudent(fit)
hist(z, breaks=nbreaks, freq=F, xlab="Studentized Residual", main="Distribution of Errors")
rug(jitter(z), col="brown")
curve(dnorm(x, mean=mean(z), sd=sd(z)), add=T, col="blue", lwd=2)
lines(density(z)$x, density(z)$y, col="red", lwd=2, lty=2)
legend("topright", legend = c("Normal Curve", "Kernel Density Curve"), lty=1:2, col=c("blue", "red"), cex=.7)
}
residplot(second_fit)
?density
?curve
residplot(second_fit, nbreaks=20)
residplot(second_fit, nbreaks=30)
residplot(second_fit, nbreaks=30)
par(mfrow=c(2,2))
plot(second_fit)
new_data <- na.omit(movies_formatted)
third_fit <- lm(Total.Gross ~ Theaters.Total * Theaters.Opening * Opening.Gross * duration, data=new_data)
summary(third_fit)
plot(third_fit)
rm_outlier_data <- new_data[-c(1144, 1808, 2494)]
fourth_fit <- lm(Total.Gross ~ Theaters.Total * Theaters.Opening *
Opening.Gross * duration, data=rm_outlier_data)
rm_outlier_data <- movies_formatted[-c(1144, 1808, 2494)]
fourth_fit <- lm(Total.Gross ~ Theaters.Total * Theaters.Opening *
Opening.Gross * duration, data=rm_outlier_data)
rm_outlier_data <- new_data[-c(1144, 1808, 2494),]
fourth_fit <- lm(Total.Gross ~ Theaters.Total * Theaters.Opening *
Opening.Gross * duration, data=rm_outlier_data)
summary(fourth_fit)
plot(fourth_fit)
plot(fourth_fit)
rm_outlier_data[1808,]
movies_formatted[1808]
movies_formatted[1808,]
movies_formatted$duration[duration>365]
open <- movies_formatted$Open
close <- movies_formatted$Close
open[c(1:10)]
close[c(1:10)]
close - open
detach(movies_formatted)
fo <- open[c(1:10)]
fc <- close[c(1:10)]
fc - fo
fo
fc
fc[1] > fo[1]
fc[1] + 365
for (i in c(1:length(fc))) if (fc[i] < fo[i]) fc[i] <- fc[i] + 365
fc
fc - fo
for (i in c(1:length(movies_formatted$Close))){
not
a
}
attach(movies_formatted)
for (i in c(1:length(movies_formatted$Close))) {
if( (is.na(Close[i]) | is.na(Open[i])) & (Close[i] < Open[i])) Close[i] <- Close[i] + 365
}
is.na(Close)
is.na(Close[3194])
is.na(Close[3194] | is.na(Open[3194]))
is.na(Close[3194]) | is.na(Open[3194]))
is.na(Close[3194]) | is.na(Open[3194])
(is.na(Close[3194]) | is.na(Open[3194])) & (Close[3194] < Open[3194])
for (i in c(1:length(Close))){
if(is.na(Close[i]) | is.na(Open[i])) next
ifelse(Close[i] < Open[i]) Close[i] <- Close[i] + 365
}
for (i in c(1:length(Close))){
if(is.na(Close[i]) | is.na(Open[i])) next
ifelse(Close[i] < Open[i], Close[i] <- Close[i] + 365)
}
for (i in c(1:length(Close))){
if(is.na(Close[i]) | is.na(Open[i])) next
ifelse(Close[i] < Open[i], Close[i] <- Close[i] + 365, next)
}
fo
fc
for (i in fc){
}
for (i in fc) print(i)
fc
fo[fc[1]]
source("R-practice/simple_functions.R")
fc
fo
date_correction(fo, fc)
source("R-practice/simple_functions.R")
movies_formatted <- format_for_model(movies)
movies_formatted$duration[c(1:20)]
movies_formatted$duration
first_fit <- lm(Total.Gross ~ Theaters.Total * Opening.Gross * Theaters.Opening * duration, data=movies_formatted)
summary(first_fit)
savehistory("Qhistory2.R")
