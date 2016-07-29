cwd()
getwd()
setwd("./R in action/R-in-action")
getwd()
getwd("./")
ls()
getwd("./R-in-action/")
setwd("./")
getwd()
setwd(".")
getwd()
setwd("C:/users/atmcc_000/documents/R in action/R-in-action/")
getwd()
ls()
setwd("R-practice")
getwd()
ls()
movie_data <- read.table("All Movies Domestic Grosses.csv", header = T, sep=",")
movie_data <- read.table("All Movies Domestic Grosses - formatted.csv", header = T, sep=",")
movie_data[0]
movie_data[1]
summary(movie_data)
movies2010 <- read.table("All Movies - 2010 Domestic Grosses.csv", header=T, sep=",")
movies2010 <- read.table("All Movies - 2010 Domestic Grosses.csv", header=T, sep=",")
View(movies2010)
movies2010 <- read.table("All Movies - 2010 Domestic Grosses.csv", header=T, sep=",", stringsAsFactors = F)
movies2010 <- read.table("All Movies - 2010 Domestic Grosses.csv", header=T, sep=",", stringsAsFactors = F)
movies2010[18]
movies2010(18)
movies2010[18,]
movies2010[44,]
column_classes <- c("numeric", "character", "character", "numeric", "numeric", "numeric", "numeric", "date", "date")
movies2010 <- read.table("All Movies - 2010 Domestic Grosses.csv", header=T, sep=",", stringsAsFactors = F, colClasses = column_classes)
column_classes <- c("numeric", "character", "character", "character", "numeric", "character", "numeric", "date", "date")
movies2010 <- read.table("All Movies - 2010 Domestic Grosses.csv", header=T, sep=",", stringsAsFactors = F, colClasses = column_classes)
column_classes <- c("numeric", "character", "character", "character", "character", "character", "character", "date", "date")
movies2010 <- read.table("All Movies - 2010 Domestic Grosses.csv", header=T, sep=",", stringsAsFactors = F, colClasses = column_classes)
movies2010 <- read.table("All Movies - 2010 Domestic Grosses.csv", header=T, sep=",", stringsAsFactors = F, colClasses = column_classes, quote="")
movies2010 <- read.table("All Movies - 2010 Domestic Grosses.csv", header=T, sep=",", stringsAsFactors = F, quote="")
movies2010 <- read.table("All Movies - 2010 Domestic Grosses.csv", header=T, sep=",", stringsAsFactors = F)
movies2010 <- read.table("All Movies - 2010 Domestic Grosses.csv", sep=",", header=T)
View(movies2010)
View(movies2010)
View(movies2010)
movies2010 <- read.table("All Movies - 2010 Domestic Grosses.csv", sep=",", header=T)
movies2010 <- read.table("All Movies - 2010 Domestic Grosses.csv", sep=",", header=T, quote="")
movies2010 <- read.table("All Movies - 2010 Domestic Grosses.csv", sep=",", header=T, quote=")
)
)
")"
"
movies2010 <- read.table("All Movies - 2010 Domestic Grosses.csv", sep=",", header=T, quote="""")
?read.table
movies2010 <- read.table("All Movies - 2010 Domestic Grosses.csv", sep=",", header=T, quote="\"")
allMovies <- read.table("All Movies Domestic Grosses - formatted.csv", sep=",", header=T, quote="\"", colClasses = c("numeric", "character", "character", "numeric", "numeric", "numeric", "numeric", "date", "date"))
allMovies <- read.table("All Movies Domestic Grosses - formatted.csv", sep=",", header=T, quote="\"", colClasses = c("numeric", "character", "character","character","character","character","character", "date", "date"))
allMovies <- read.table("All Movies Domestic Grosses - formatted.csv", sep=",", header=T, quote="\"")
702+688+667+602+536
summary(allMovies)
allMovies <- read.table("All Movies Domestic Grosses - formatted.csv", sep=",", header=T, quote="\"", na.strings=c("-", "N/A"))
allMovies <- read.table("All Movies Domestic Grosses - formatted.csv", sep=",", header=T, quote="\"", na.strings=c("-", "N/A"))
summary(allMovies)
allMovies$Studio
movies <- allMovies
detach(allMovies)
del allMovies
del(allMovies)
remove(allMovies)
remove(movies2010)
movies[1,1]
movies[1,]
as.numeric(movies$Total.Gross[1])
movies$Total.Gross[1]
type(movies$Total.Gross[1])
class(movies$Total.Gross[1])
movies <- read.table("All Movies Domestic Grosses - formatted.csv", sep=",", header=T, quote="\"", na.strings=c("-", "N/A"))
summary(movies)
class(movies$Total.Gross[1])
as.numeric(movies$Total.Gross[1])
movies$Total.Gross[1]
movies <- read.table("All Movies Domestic Grosses - formatted.csv", sep=",", header=T, quote="\"", na.strings=c("-", "N/A"))
a_string < - "4395031"
a_string <- ""
a_string <- "833025"
a_string
type(a_string)
class(a_string)
as.numeric(a_string)
x <- movies$Total.Gross[1]
x
x <- movies$Total.Gross[[1]
]
x
strsplit(x, "$")
as.character(x)
x <- as.character(x)
strsplit(x, "$")
strsplit(x, ",")
wrangle <- strsplit(x, ",")
wrangle[1]
class(wrangle)
wrangle[[1]]
wrangle[1]
x
strsplit(x, '$')
class(x)
strsplit(as.vector(x), "$")
x[-1]
x
x[1]
x <- as.vector(x)
x
x[-1]
x <- as.character.factor(x)
x <- as.character(x)
class(x)
x
substr(x, 2)
nchar(x)
x[12]
x[9]
x
x(9)
substr(x, 2, nchar(x))
newX <- substr(x, 2, nchar(x))
new
newX
newX <- strsplit(newX, ",")
newX <- substr(x, 2, nchar(x))
newX
sub(",", "", newX)
?sapply
strsplit(x ",")
strsplit(x, ",")
newX <- substr(x, 2, nchar(x))
strsplit(newX, ",")
lapply(strsplit(newX, ","), fun="c")
lapply(strsplit(newX, ","), FUN="c")
lapply(strsplit(newX, ","), FUN="c()")
help(package="reshape2")
a <- strsplit(newX, ",")
a
a[1]
a[2]
a[1,]
a[,1]
class(a)
as.vector(a)
a <- as.vector(a)
a[1]
a[[1]]
a[[2]]
a[[1]][1]
?lapply
lapply(a, FUN=c())
lapply(a, FUN=c
)
length(a)
a
length(a[[1]])
lapply(a, FUN="+")
lapply(a[[1]], FUN="+")
lapply(a[[1]], FUN=+)
newX
strtoi(newX)
?by
function(a_list){
string = ""
for (i in 1:length(a_list[[1]])): string += a_list[[1]][i]
function(a_list){
for (i in 1:length(a_list[[1]])) string += a_list[[1]][i]
for (i in 1:length(a_list[[1]])) string <- c(string, a_list[[1]][i])
function(a_list){
for (i in 1:length(a_list[[1]])) string <- c(string, a_list[[1]][i])
}
function(a_list){
string <- ""
for (i in 1:length(a_list[[1]])) string <- c(string, a_list[[1]][i])
return string
function(a_list){
for (i in 1:length(a_list[[1]])) string <- c(string, a_list[[1]][i])
return (string)
}
my_func <- function(a_list){
string <- ""
for (i in 1:length(a_list[[1]])) string <- c(string, a_list[[1]][i])
return (string)
}
my_func(a)
a
a[[1]]
a[[1]][1]
a[[1]][2]
str = ""
c(a[[1]][1], a[[1]][2], a[[1]][3])
str <- str + a[[1]][1]
a
newX
as.character(newX)
sttr
str
sub(",", "", newX)
sub(",", "", newX, fixed=T)
newX <- sub(",", "", newX)
newX
newX
newX <- sub(",", "", newX)
newX
as.numeric(newX)
x
X <- substr(2, nchar(x))
X <- substr(x, 2, nchar(x))
X
lapply(X, sub(",", "", X))
?apply
formatted <- movies$Total.Gross
formatted <- as.vector(formatted)
ridofDollar <- lapply(formatted, function(x){substr(x, 2, nchar(x))})
sub(",", "", newX)
Total.Gross.formatted <- lapply(ridofDollar, function(x){sub(",", "", x)})
Total.Gross.formatted <- lapply(ridofDollar, function(x){sub(",", "", x)})
Total.Gross.formatted <- lapply(Total.Gross.formatted, function(x){sub(",", "", x)})
Total.Gross.formatted <- lapply(Total.Gross.formatted, function(x){as.numeric(x)})
movies$Total.Gross <- Total.Gross.formatted
summary(movies)
movies <- read.table("All Movies Domestic Grosses - formatted.csv", sep=",", header=T, quote="\"", na.strings=c("-", "N/A"))
summary(movies)
movies$Total.Gross[c(1:10)]
Total.Gross.formatted[c(1:10)]
mean(Total.Gross.formatted)
?mean
mean(Total.Gross.formatted, na.rm=T)
View(Total.Gross.formatted)
newV <- c()
newV <- lapply(Total.Gross.formatted, function(x){newV <- c(newV, x))})
newV <- lapply(Total.Gross.formatted, function(x){newV <- c(newV, x)})
mean(newV)
View(newV)
newV[[1]]
newV <- c()
newV <- lapply(Total.Gross.formatted, function(x){newV <- c(newV, as.numeric(x)})
newV <- lapply(Total.Gross.formatted, function(x){newV <- c(newV, as.numeric(x))})
class(newV)
mean(newV[1])
mean(newV)
mu <- lapply(newV, FUN=mean)
mu
mu <- lapply(newV[[1]], FUN=mean)
mu
newV[[1]]
newV[1]
mean(newV)
mean(as.vector(newV))
as.vector(newV)
for (i in c(1:lenth(newV))) newV[i
]
for (i in c(1:length(newV))) newV[i
]
for (i in c(1:length(newV))) newV[i]
newV
newV[1]
newV[2]
class(newV[1])
for (i in c(1:length(newV))) newV[[i]]
c(newV[[1]], newV[[2]])
mean(c(newV[[1]], newV[[2]]))
finally <- c()
length(newV)
c(1:length(newV))
for (i in c(1:length(newV))) finally <- c(finally, newV[[i]])
mean(finally)
savehistory("DecisionQ_exercise.R")
