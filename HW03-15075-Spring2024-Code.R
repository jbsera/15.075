#' Problem 1c
#' 
#' 
#' 

data_temp=read.csv("C:\\Users\\joyse\\Desktop\\15.075\\MA-Monthly-Avg-Temp.csv")
head(data_temp)

Days.In.Year <- tapply(data_temp$Days.In.Month, data_temp$Year, sum)
Annual.Sum.Temp <- tapply(...)
Annual.Average.Temp <-...


#' Problem 1d 

#' Check out the Code from Lecture for an example
#' of the Shuffle Test that is fully worked out.
#' 
#' With a Shuffle Test, we are looking for a way to check if we are being
#' "tricked" into seeing a pattern in a plot because we expect to see it. 
#' The basic principle is to put the "real" plot in with a bunch of "random" 
#' plots, but not know which is which. If we can clearly see the pattern/pick
#' out the real plot out of the others (which are actually just random noise), 
#' then it is much likelier that the pattern is real.


#' We're going to make a 3x3 grid, where one plot has the "real" time series of
#' tempertatures, and the others have a scrambled time series. 

set.seed(15.075) # Set the random seed.
real = sample(1:9, 1) # Pick a random number from 1-9, to be the "real" plot
par(mfrow = c(3,3), mar=c(2,2,1,1), mgp=c(1.8,.5,0), oma = c(0,0,2,0))
# Iterate through the plots:
for(i in 1:9){
  # If we're at the selected number, draw the real data.
  if (i == real){
    plot(..., type = "l", ylab = "", xlab = "")
  # Otherwise, resample the data and plot it. 
  } else {
    plot(sample(...), type = "l", ylab = "", xlab = "")
  }
}
title("Shuffle Test - Annual Average Temperatures", outer = T) # overall title



# The following will draw the real plot in red for submitting the homework.
# DON'T LOOK AT THIS AHEAD OF TIME! USE THE CHARACTERISTICS OF THE DATA TO 
# DISCERN THE TRUE PLOT FROM THE SHUFFLE TEST!

set.seed(15.075) # Set the random seed.
real = sample(1:9, 1) # Pick a random number from 1-9, to be the "real" plot
par(mfrow = c(3,3), mar=c(2,2,1,1), mgp=c(1.8,.5,0), oma = c(0,0,2,0))
# Iterate through the plots:
for(i in 1:9){
    # If we're at the selected number, draw the real data.
    if (i == real){
        plot(..., type = "l", ylab = "", xlab = "", col="red")
        # Otherwise, resample the data and plot it. 
    } else {
        plot(sample(...), type = "l", ylab = "", xlab = "")
    }
}
title("Shuffle Test - Annual Average Temperatures", outer = T) # overall title

#' Once you've copied your plot, clear the plotting window
dev.off()

#' Problem 3
#' For this question you will need the package *gmodels*. To install
#' uncomment and run the following command:
#' install.packages("gmodels")

#' Load the library for gmodels:
library(gmodels)


#' Load the source code for the *mosaic.plot()* function.
source("http://www-stat.wharton.upenn.edu/~buja/STAT-961/mosaic.R")

pda = read.csv("PDA_categ.csv")
CrossTable(...,..., prop.chisq = F)

#' Problem 3a
#' The last argument in the table() command is displayed on the y axis
mosaic.plot(table(..., ...), main = "...")

#' Once you've copied your plot, clear the plotting window
dev.off()


#' Problem 3f
mosaic.plot(table(..., ..., ...), main = "...")
dev.off()


