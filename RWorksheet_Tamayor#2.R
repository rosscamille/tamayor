#1 Create a vector using: operator 

#a.Sequence from -5 to 5
seqNum <- seq(-5,5)
seqNum

#b. x <-(1:7)

x_value <- seq (1:7)
x_value

#2 Create a vector using seq() function

#a.seq(1, 3, by=0.2)
seq <- seq(1, 3, by=0.2)
seq

#
#
#
#

#3 A factory has a census of its workers. There are 50 workers in total.

age <- c (34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
          22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
          24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
          18)

#a. 3rd element
age [3]

#b. 2nd and 4th element
age [c(2,4)]

#c. all elements but the 4th and 12th element is not included.
age [c(1:3,5:11,13:50)]

#4. Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, name(x).

x <- c("first"=3, "second"=0, "third"=9)

#a. x[c("first", "third")]
#The output is first 3 and third 9, since we're getting the value of "first" and "third" in no. 4

#b.

x[c("first","thrid")]

#5. Create a sequence x from -3:2.

#a. Modify 2nd element and change it to 0; 
x[2] <- 0 
x 

#We change the value of the second sequence of x into 0

#b.

x[2] <- 0
x

#6. Diesel fuel purchased by Mr. Cruz.

#a. Create a data frame for month, price per liter (php) and purchase-quantity (liter).


DieselFuelData <- data.frame(
  
  Month = c("Jan","Feb","March","Apr","May","June"),
  PricePerLiter = c(52.50,57.25,60.00,65.00,74.25,54.00),
  PurchaseQuantity = c(25,30,40,50,10,45)
  
)
DieselFuelData
View(DieselFuelData)

#b. What is the average fuel expenditure of Mr. Cruz from Jan to June? Note: Use ‘weighted.mean(liter, purchase)‘. Write the R scripts and its output.

PricePerLiter = c(52.50,57.25,60.00,65.00,74.25,54.00)
PurchaseQuantity = c(25,30,40,50,10,45)
weighted.mean(PricePerLiter,PurchaseQuantity)

#7. R has actually lots of built-in datasets. For example, the rivers data “gives the lengths (in miles) of 141 “major” rivers in North America, as compiled by the US Geological Survey”.

#a. Type “rivers” in your R console.
RiverData <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))

#b
RiverData

#8. Forbes Magazine
#a.
RanksData <- data.frame(
  
  PowerRanking = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25),
  CelebrityName = c("Tom Cruise","Rolling Stones","Oprah Winfrey","U2","Tiger Woods","Steven Spielberg","Howard Stern","50 Cent","Cast of the Sopranos","Dan Brown","Bruce Springsteen","Donald Trump","Muhammad Ali","Paul McCartney","George Lucas","Elton John,","David Letterman","Phil Mickelson","J.K Rowling","Bradd Pitt","Peter Jackson","Dr. Phil McGraw","Jay Lenon","Celine Dion","Kobe Bryant"),
  Pay = c(67,90,225,110,90,332,302,41,52,88,55,44,55,40,233,34,40,47,75,25,39,45,32,40,31)
  
)
RanksData
View(RanksData)

#b. 

RanksData$PowerRanking[RanksData$PowerRanking =="J.K Rowling"] <-15
RanksData$Pay[RanksData$Pay =="J.K Rowling"] <-90
RanksData

#c

PowerRanking = read.csv('/cloud/project/PowerRanking.csv')
PowerRanking
AccessPowerRanking = PowerRanking[c(10:20),]
AccessPowerRanking

#e. Output is the 10-20 row information in the csv file.


#9.
#install.package("readxl")
library(readxl)
Data <- read_excel("hotels-vienna.xlsx")
Data
View(Data)
#b
DimensionFile <- dim(Data)
DimensionFile
#c
colnames(Data)
Colums <- Data[c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
View(Colums)
#d
save(Colums, file="new.RData")
View(Colums)

#e
load("new.RData")
Colums

Head_Six <- head(Colums)
Tail_Six <- tail(Colums)
View(Head_Six)
View(Tail_Six)


#10.
#a.              
Vegetables <- list("Lettuce","Potato","Celery","Tomato","Bitter Gourd","Squash","Cabbage","Eggplant","Broccoli","Carrots")
#b
NewList <- append(Vegetables,c("Cucumber","Mushroom"))
NewList
#c
NewList <- append(Vegetables,c("Cauliflower","Green Bean","Radish","Spinash"),after = 5)
NewList
#d
NewList <- Vegetables [c(-5, -10, -15)]
NewList









