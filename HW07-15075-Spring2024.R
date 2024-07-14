################################################################################
# Problem 1
################################################################################
bw = read.csv("C:\\Users\\joyse\\Desktop\\15.075\\birthweight.csv")

# Training wheels are off!! You've seen examples of all the tasks required
# in the lecture code and/or in past homeworks.
smoke_1 <- subset(bw, smoke == 1)
smoke_0 <- subset(bw, smoke == 0)

sd_s <- sd(smoke_1$bwt)
sd_ns <- sd(smoke_0$bwt)
n_s <- length(smoke_1$bwt)
n_ns <- length(smoke_0$bwt)

se <- sqrt((sd_s^2)/n_s + (sd_ns^2)/n_ns)
se

t_value <- (mean(smoke_1$bwt)-mean(smoke_0$bwt))/se
t_value

t.test(smoke_1$bwt, smoke_0$bwt,
       alternative = "less",
       mu = 0, paired = FALSE, var.equal = FALSE,
       conf.level = 0.95)

boxplot(smoke_1$bwt, main = "Birthweight Distribution for Smoking Moms")

boxplot(smoke_0$bwt, main = "Birthweight Distribution for Non-Smoking Moms")


qqnorm(smoke_0$bwt, main = "Non-smoking Moms' Normal Plot", ylab = "")
qqline(smoke_0$bwt)







# 1f
t.test(..., ..., alternative = ..., mu = ..., paired = ...)

################################################################################
# Problem 2
################################################################################
# Training wheels are promptly back on. Hopefully not too many scraped knees...

dat = read.csv("C:\\Users\\joyse\\Desktop\\15.075\\RandD.csv")
RandD = dat$R.D.Expense
sales = dat$Sales
mean(sales)
mean(RandD)

# 2a
plot(RandD, sales, pch = 16, main = "R&D Expenses Vs. Sales", xlab = "R.D Expenses", ylab = "Sales")

# 2c
lm.orig = lm(sales~RandD)
summary(lm.orig)

plot(RandD, residuals(lm.orig), 
     xlab = "R&D Expenses", 
     ylab = "Residuals",
     main = "Residuals vs R&D Expenses")
abline(h = 0, col = "red", lty = 2)


# 2e
lm.loglog = lm(log(sales)~log(RandD))
summary(lm.loglog)


plot(log(RandD), residuals(lm.loglog), 
     xlab = "Log R&D Expenses", 
     ylab = "Residuals",
     main = "Residuals vs. Log R&D Expenses")
abline(h = 0, col = "red", lty = 2)

qqnorm(residuals(lm.loglog), main = "Residuals' Normal Plot", ylab = "")
qqline(residuals(lm.loglog))





coef_estimate <- coef(lm.loglog)[2]
std_error <- summary(lm.loglog)$coefficients[2, "Std. Error"]
t_value <- (coef_estimate-1)/std_error
df <- length(log(RandD))-2
p_value <-pt(t_value, df, lower.tail = TRUE)
p_value

qt((0.95)/2+0.5, df)

