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


















