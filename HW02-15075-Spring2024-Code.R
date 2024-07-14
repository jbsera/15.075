#####################
# HOMEWORK 2 R CODE #
#####################

#Problem 1
#1b
qnorm(0.125, 0, 1)


#Problem 2
#2a
scores <- read.csv("C:\\Users\\joyse\\Desktop\\15.075\\Scores_MidFin_HW.csv")

par(mfrow=c(1,3), mar=c(2,3,3,1), mgp=c(1.8,.5,0), oma = c(0,0,2,0))
hist(scores$Mid.Fin, main = "Midterm and Final Z Scores")
boxplot(scores$Mid.Fin, main = "Midterm and Final Z Scores")
qqnorm(scores$Mid.Fin, main = "Midterm and Final Z Scores", ylab = "")
qqline(scores$Mid.Fin)
title("Distribution of Midterm+Final Scores", outer = T)

#once you have copied your plots, run the following command to clear the plotting window and set the parameters back to default:
dev.off()

#2b
#make the appropriate modifications to the code for 2a
par(mfrow=c(1,3), mar=c(2,3,3,1), mgp=c(1.8,.5,0), oma = c(0,0,2,0))
hist(scores$HW, main = "Homework Z Scores")
boxplot(scores$HW, main = "Homework Z Scores")
qqnorm(scores$HW, main = "Homework Z Scores", ylab = "")
qqline(scores$HW)
title("Distribution of Homework Scores", outer = T)

#once you have copied your plots, run the following command to clear the plotting window and set the parameters back to default:
dev.off()

#Problem 3
#3a
z_score <- (39 - 40) / 1.9
z_score
pnorm(z_score)


#3b
#3bi
std=1.9
mean=40
upper = qnorm(0.95, 0, 1)*std + mean
lower= qnorm(0.05, 0, 1) *std + mean
lower
upper



#3bii
qnorm(0.95, 40, 1.9)
qnorm(0.05, 40, 1.9)


#Problem 4
#4a
stocks <- read.csv("C:\\Users\\joyse\\Desktop\\15.075\\Stocks_Dell_IBM_MS.csv")
colnames(stocks)


par(mfrow=c(3,2), mar=c(2,3,3,1), mgp=c(1.8,.5,0), oma = c(0,0,2,0))
hist(stocks$Dell, ylab = "Dell", main = "Dell Returns", xlim = c(-.5,.5), breaks = 20, col = "grey")
boxplot(stocks$Dell, ylim = c(-.5,.5), horizontal = T)
hist(stocks$IBM, ylab = "IBM", main = "IBM Returns", xlim = c(-.5,.5), breaks = 20, col = "grey")
boxplot(stocks$IBM, ylim = c(-.5,.5), horizontal = T)
hist(stocks$MS, ylab = "MS", main = "MS Returns", xlim = c(-.5,.5), breaks = 20, col = "grey")
boxplot(stocks$MS, ylim = c(-.5,.5), horizontal = T)
title("Comparison of Stock Returns", outer = T)

#once you have copied your plots, run the following command to clear the plotting window and set the parameters back to default:
dev.off()


mean(stocks$MS)
median(stocks$MS)
sd(stocks$MS)



#4e
par(mfrow = c(1,3), mar=c(2,3,3,1), mgp=c(1.8,.5,0))
qqnorm(stocks$Dell, main = "Dell Q-Q Plot", ylab = "")
qqline(stocks$Dell)
qqnorm(stocks$IBM, main = "IBM Q-Q Plot", ylab = "")
qqline(stocks$IBM)
qqnorm(stocks$MS, main = "MS Q-Q Plot", ylab = "")
qqline(stocks$MS)

#once you have copied your plots, run the following command to clear the plotting window and set the parameters back to default:
dev.off()



#4f
pnorm()




#4g
x = c(-1, 5, 6, 4, 2, 3, 8)
leq3 = (x <= 3)
mean(leq3)    

mean(stocks$MS<=-0.08)






