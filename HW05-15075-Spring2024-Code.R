#Q1



################################
#Run this bit of code before 1h)
################################
set.seed(15.075)
nvisit = 1000000
val.of.x = c(0, 1, 2, 3, 4, 5)
p.of.x = c(0.75, 0.15, 0.05, 0.03, 0.01, 0.01)
lightbulb.72 = matrix(sample(val.of.x, prob=p.of.x, size=nvisit*72, replace=T), ncol=nvisit)

# 1h
mean(lightbulb.72)
sd(lightbulb.72)

# 1i
sum.lightbulb.72 = colSums(lightbulb.72)
mean(sum.lightbulb.72)
sd(sum.lightbulb.72)

# 1j
hist(sum.lightbulb.72, breaks=30)
qqnorm(sum.lightbulb.72,ylab = "")
qqline(sum.lightbulb.72)


# 1k 
par(mfrow = c(1,2), mar = c(3,3,2,1), mgp = c(1.8, .5, 0))
hist(..., xlab="...", breaks=30)
qqnorm(...)
qqline(...)

# 1l
# Hint code:
a = 1:10
geq4.and.leq6 = (a >= 4 & a <= 6)
mean(geq4.and.leq6)

between.20.and.40 = (40>=sum.lightbulb.72 & 20<=sum.lightbulb.72)
mean(between.20.and.40)
...
