#####################
# HOMEWORK 1 R CODE #
#####################

#Problem 1
#1.a
hs = read.csv("Housing_Starts_Yearly.csv")

#1.b
str(hs)
nrow(hs)
ncol(hs)
colnames(hs)
last_year <- max(hs$Year)
last_year
hs[(which.max(hs$Year)),]



#1.c.1
plot(hs$Year, hs$Housing.Starts)

#1.c.2
par(mar=c(3,3,1,1), mgp=c(1.8,.5,0))    # sizing the margins
plot(hs$Year, hs$Housing.Starts,
     type="b", # Both lines and points
     main = "Housing Starts 1960-2009", # overall title 
     ylab = "Housing Starts (in 1000s)", # y-axis title
     xlab = "Year", # x-axis title
     pch=16) # pch stands for "plotting character", 16 is filled circles
text(hs$Year, hs$Housing.Starts, labels=hs$Year, cex=0.6, adj=-0.3) # add text to each data point


#once you have copied your plots, run the following command to clear the plotting window and set the parameters back to default:
dev.off()

#1.d.1
rep(c("A", "B", "C", "D"), times = 4)
rep(c("A", "B", "C", "D"), each = 4)

#1.d.2
decade = rep(c("1960s", "1970s", "1980s", "1990s", "2000s"), each=10)

#1.d.3
hs$Decade = decade
hs[hs$Year %in% c(1961, 1974, 1988, 1996, 2007),] 

#1.d.4
hs.agg = tapply(hs$Housing.Starts, hs$Decade, sum)
hs.agg

#1.e
par(mar=c(3,3,2,1), mgp=c(1.8,.5,0))
barplot(hs.agg, main="Housing Starts by Decade", ylab="Total Housing Starts", xlab="Decade")


#1.f
hs.agg.avg = tapply(hs$Housing.Starts, hs$Decade, mean)
hs.agg.avg

# Print the computed means
hs.agg.avg
#2
#2.a
titanic = read.csv("Titanic.csv")
table(titanic$CLASS, titanic$SURVIVED)

#2.b
barplot(table(titanic$SURVIVED, titanic$CLASS), beside = T, main = "Survival by Class", xlab = "Class", ylab = "Count",)

legend("topleft", legend = c("Did not survive", "Survived"), fill = grey.colors(2), bty = "n")





#3
#3.a
sodr = read.csv("SoftDrinks.csv")

#3.b.1
scrambled.numbers = c(21, 3, 8, 13, 5, 2)
order.ascending = order(scrambled.numbers, decreasing = F)
order.descending = order(scrambled.numbers, decreasing = T)
order.ascending
order.descending

#3.b.2
random.order = c(2, 5, 10, 1, 9, 7, 8, 6, 4, 3)
sodr.random = sodr[random.order,]
sodr.random

#3.b.3
cases.ascend = order(sodr$Cases, decreasing = F)
sodr.ord = sodr[cases.ascend,]
sodr.ord

#3.c
par(mfrow=c(1,2), mar=c(9,3,2,1))
barplot(sodr$Cases, names.arg = sodr$Brand, las = 3)
barplot(sodr.ord$Cases, names.arg = sodr.ord$Brand, las = 3)


#once you have copied your plots, run the following command to clear the plotting window and set the parameters back to default:
dev.off()
#3.d
par(mfrow=c(1,2))
sodr.agg = tapply(sodr$Cases, sodr$Company, sum)
barplot(sodr.agg[order(sodr.agg, decreasing=T)], las=3, main = "Total Cases by Company")
pie(sodr.agg, clockwise = T)

#once you have copied your plots, run the following command to clear the plotting window and set the parameters back to default:
dev.off()








