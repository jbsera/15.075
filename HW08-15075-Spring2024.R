

#############################################################################
# Question 1
#############################################################################
hybrid = read.csv("C:\\Users\\joyse\\Desktop\\15.075\\hybrid_car.csv")
attach(hybrid)
hybrid

# 1a
lm.msrp = lm(msrp ~ year+accelerate+mpg, data=hybrid)
summary(lm.msrp)
...

# 1b
predicted_y <- 538047.5 + (-265.5 * 2007) + (4291.3 * 8) + (-470.6 * 40)
predicted_y

new_data <- data.frame(year = c(2007), accelerate = c(8), mpg = c(40))

# Predict msrp using the model
predicted_msrp <- predict(lm.msrp, newdata = new_data, type="response")

# Print the predicted value
print(predicted_msrp)



confidence_level <- 0.90

# Calculate the critical t-value
t_critical <- qt((1 - confidence_level) / 2, 149)

# Print the critical t-value
print(t_critical)


# 1c
plot(year, lm.msrp$residuals, xlab='Year', ylab="Residuals", main="Residuals by Year", pch = 19)
abline(h = 0, col = 'red', lwd = 2)
plot(accelerate, lm.msrp$residuals, xlab='Accelerate', ylab="Residuals", main="Residuals by Accelerate", pch = 19)
abline(h = 0, col = 'red', lwd = 2)
plot(mpg, lm.msrp$residuals, xlab='mpg', ylab="Residuals", main="Residuals by mpg", pch = 19)
abline(h = 0, col = 'red', lwd = 2)

plot(lm.msrp$fitted.values, lm.msrp$residuals,
     ylab="Residuals", xlab="Predicted", main="Residuals by Predicted Value", pch=19)
abline(h = 0, col = 'red', lwd = 2)


qqnorm(lm.msrp$residuals, main = "Normal Q-Q Plot of Residuals")
qqline(lm.msrp$residuals) 

# 1d
lmsrp = log(msrp)
lmpg = log(mpg)
log.lm = lm(lmsrp ~ lmpg)
summary(log.lm)

# 1g
log.lm.msrp = lm(lmsrp ~ lmpg +year+accelerate)
xnew = data.frame(accelerate=c(8), year=c(2007), lmpg=c(log(40)))
predict(log.lm.msrp, xnew, interval="prediction", level = 0.95)

...

# 1i
... + qt(..., ...) * ...


lm.full=lm(lmsrp ~ lmpg + year + accelerate, hybrid)
lm.partial = lm(lmsrp~ lmpg+accelerate, hybrid)

anova(lm.partial, lm.full)







