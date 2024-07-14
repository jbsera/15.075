# 2
property = read.csv("C:\\Users\\joyse\\Desktop\\15.075\\Residential_Property_Assessments.csv")

# 2a
plot(property$Livable.Area, property$Assessment, main = "Assessment vs Livable Area", xlab = "Livable Area", ylab = "Assessment", pch = 16)
# 2c
mod = lm(property$Assessment~property$Livable.Area)
mod$coefficients
intercept = mod$coefficients[1]
slope = mod$coefficients[2]

intercept
slope
residence=c(1205)
prediction=slope*1205+intercept
prediction


# 2f
resids = unname(mod$residuals)
n = nrow(property)
#' Calculate the rMSE:
rMSE = sqrt(sum(resids ^ 2) / (n - 2))
rMSE

# 2g
...

# 2j 
plot(property$Assessment, resids, main = "Residual Plot", xlab = "Assessment Pred", ylab = "Resids", pch = 16)
abline(h=0, col = "red", lwd = 3)


plot(x = sulfur, y = resids, 
     xlab = "Sulfuric Dioxide", ylab = "Residuals",
     pch = 19) 
abline(h = 0, col = "red", lwd = 3)
abline(h = mean(resids), col = "blue", lwd = 3, lty = "dashed")

# 2m

