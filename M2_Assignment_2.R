#Q.1.Print your name at the top of the script.

print("Plotting Basics: Dighe")

#Q.2. Import libraries including: FSA, FSAdata, magrittr, dplyr, plotrix, ggplot2, and moments

install.packages("FSA")
install.packages("FSAdata")
install.packages("magrittr")
install.packages("dplyr")
install.packages("plotrix")
install.packages("ggplot2")
install.packages("moments")

library("FSA")
library("FSAdata")
library("magrittr")
library("dplyr")
library("plotrix")
library("ggplot2")
library("moments")

#Q.3.Load the BullTroutRML2 dataset 

BullTroutRML2

#Q.4.Print the first and last 3 records from the BullTroutRMS2 dataset

head(BullTroutRML2,n=3)

tail(BullTroutRML2,n=3)

#Q.5.Remove all records except those from Harrison Lake 

New_Harrison <- filter(BullTroutRML2, lake=="Harrison")
New_Harrison

#Q.6.Display the first and last 5 records from the filtered BullTroutRML2 dataset

head(New_Harrison,n=5)
tail(New_Harrison,n=5)

#Q.7.Display the structure of the filtered BullTroutRML2dataset

structure(New_Harrison)

#Q.8.Display the summary of the filtered BullTroutRML2dataset

summary(New_Harrison)

#Q.9.Create a scatterplot for "age" (y variable) and "fl" (x variable) with the given specifications 
#Limit of x axis is (0,500)
#Limit of y axis is (0,15)
#Title of graph is "Plot 1: Harrison Lake Trout
#Y axis label is "Age (yrs)"
#X axis label is "Fork Length (mm)"
#Use a small filled circle for the plotted data points

plot(age~fl,data=New_Harrison)

ScatterPlot <- plot(age~fl,data=New_Harrison,
                    xlim=c(0,500),ylim=c(0,15),
                    main="Plot 1:Harrison Lake Trout",
                    xlab="Fork Length(mm)",ylab="Age(yrs)",
                    pch=20)

#Q.10.Plot an "Age" histogram with the given specifications

hist(New_Harrison$age,xlab="Age(yrs)",ylab="Frequency",main="Plot 2:Harrison Fish Age Distribution",xlim = c(0,15),
     ylim = c(0,15),col="cadetblue",col.main="cadetblue")

fl <- New_Harrison$fl
age <- New_Harrison$age

#Q.11.Create an overdense plot using the same specifications as the previous scatterplot.

OverdensePlot <- plot(age~fl,
                      xlim=c(0,500),ylim=c(0,15),
                      main="Plot 3: Harrison Density Shaded by Era",
                      xlab="Fork Length(mm)",ylab="Age(yrs)",
                      pch=19,col=rgb(0,(1:2)/2,0))

#Q.12. Create a new object called "tmp" that includes the first 3 and last 3 records of the BullTroutRML2 data set.

tmp<-headtail(Harrison,n=3)
tmp

#Q.13.Display the "era" column (variable) in the new "tmp" object

tmp$era

#Q.14. Create a pchs vector with the argument values for + and x.
pchs <- c('+','x')
pchs

#Q.15.Create a cols vector with the two elements "red" and "gray60"

cols <- c("red","gray60")
cols

#Q.16.Convert the tmp era values to numeric values. 

tmp$era
as.numeric(tmp$era)

#Q.17.Initialize the cols vector with the tmp era values

tmp$era <- cols
tmp$era

#Q.18.Create a plot of "Age (yrs)" (y variable) versus "Fork Length (mm)" (x variable) with the given specifications:
#Title of graph is "Plot 4: Symbol & Color by Era"
#Limit of x axis is (0,500)
#Limit of y axis is (0,15)
#X axis label is "Age (yrs)"
#Y axis label is "Fork Length (mm)"
#Set pch equal to pchs era values
#Set col equal to cols era values
 
plot(age~fl,data=New_Harrison,
     xlim=c(0,500),ylim=c(0,15),
     main="Plot 4:Symbol & Color by Era",
     xlab="Fork Length(mm)",ylab="Age(yrs)",
     pch=pchs[New_Harrison$era],col=cols[New_Harrison$era])

#Q.19.Plot a regression line overlay on Plot 4 and title the new graph "Plot 5: Regression Overlay".

plot(age~fl, data= New_Harrison,
     main = "Plot 5: Regression Overlay",
     xlab ="Fork Length (mm)", ylab = "Age (yrs)", 
     xlim = c(0, 500), ylim = c(0,15),
     pch=pchs[New_Harrison$era] , col=cols[New_Harrison$era])

RO <- lm(age~fl,data = New_Harrison)
abline(RO)

#Q.20.Place a legend of on Plot 5 and call the new graph "Plot 6: :Legend Overlay"

plot(age~fl, data= New_Harrison, main = "Plot 6: Legend Overlay",
     xlab ="Fork Length (mm)", ylab = "Age (yrs)",
     xlim = c(0,500),ylim = c(0,15),
     pch=pchs[New_Harrison$era] ,
     col=cols[New_Harrison$era])

a <- lm(age~fl,data = New_Harrison)

abline(a)

?legend

New_Harrison$era 

legend("topleft",legend = c("1977-80","1997-01"), pch = pchs, col = cols)

#Q.21.Commit your code in your github/gitlab repo

