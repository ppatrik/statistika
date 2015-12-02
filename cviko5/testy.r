# 1. model linearny
x = c(1, 1.5, 2, 2, 2.5)
y = c(3, 5,   6, 6, 7)
cor(x, y)
plot(x, y)
cor.test(x, y)

vys = lm(y~x) # linear model
summary(vys)
str(vys)

# 2) T-Test
# H0: a = 0
# H0: b = 0
# H1: a != 0
# H1: b != 0 test vkladu linearneho clana do modelu
# 3) F-Test
# H0:  a = 0 = b
# H1: aspon jeen z nich sa nerovna nule
# test vhodnosti (vyznamnosti) linearneho modelu

attributes(vys)
coef(vys) # <=> vys$coef
fitted(vys) # <=> vys$fit
residuals(vys) # <=> vys$resid

vys$coef[1] + vys$coef[2]*x

abline(vys) # regresna priamka

xodh = -1:3
yodh = vys$coef[1] + vys$coef[2] * xodh
yod = vys$fit
plot(xodh, yodh, col="green", type="l")
points(x, y)
points(x, yod, col="magenta")
abline(lm(y~x), col="red")

vys2 = lm(y~0+x)
lines(x, vys2$fit, col="blue")

points(x, vys$fit, col='blue')

x = c(1, 1.5, 2, 2, 2.5)
y = 1/2+c(3, 5,   6, 6, 7)
plot(x~y)
vys = lm(x~y)
summary(vys)

lines(x, 1/2 + vys$fit, col='blue')

# vlastny maticovy vypocet
x = cbind(rep(1, length(x)), x)
solve(t(x) %*% x) %*% t(x) %*% y

x*x
