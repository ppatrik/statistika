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

points(x, vys$fit, col='blue')

