#Q.1.	Print your name at the top of the script 
print("POONAM DIGHE")

#Q.2. Install the vcd package 
r=getOption("repos")
r["CRAN"]="http://cran.us.r-project.org"
options(repos=r)
install.packages("vcd")

#package 'vcd' successfully unpacked and MD5 sums checked
#
#The downloaded binary packages are in
#C:\Users\poonam\AppData\Local\Temp\RtmpiM9c2l\downloaded_packages

#Q.3. Import the vcd library 
library(vcd)

#Loading required package: grid

#Q.4. Plot a sales~temp scatter plot using the data below:Sales data:(7,11,15,20,19,11,18,10,6,22) Temperature data: (69,81,77,84,80,97,87,70,65,90) 

Sales  <- c(7,11,15,20,19,11,18,10,6,22) 
Sales

Temperature <- c(69,81,77,84,80,97,87,70,65,90) 
Temperature

plot (Sales~Temperature,xlab="Temperature",ylab="Sales",main="Scatter Plot", sub="Sales vs Temperature")

#Q.5. Find the mean temperature (pg 9) 
mean(Temperature)

#Q.6.	Delete the 3rd element from the sales vector  
Sales <- Sales[-3]
Sales

#Q.7.	Insert 16 as the 3rd element into the sales vector.
Sales <- c(Sales[1:2],16,Sales[3:9])
Sales

#Q.8.	Create a vector <names> with elements Tom, Dick, Harry (pg 22)
names <- c("Tom","Dick","Harry")
names

#Q.9.	Create a 5 row and 2 column matrix of 10 integers 
matrix(1:10, nrow=5, ncol=2)

#Q.10.	Create a data frame <icSales> with sales and temp attributes
icSales <- data.frame(Sales,Temperature)

#Q.11.	Display the data frame structure of icScales
structure(icSales)

#Q.12.	Display a summary of the icScales data frame 
summary(icSales)

#Q.13.	Import the dataset Student.csv  
library(readxl)
Student <- read_excel("C:/Users/poonam/Documents/NEU/Student.xls")
View(Student)

#Q.14.	Display only the variable names of the Student.csv dataset 
ls(Student)





