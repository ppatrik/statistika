# testy dobrej zhody


m=9;s=9; set.seed(12)
x = rnorm(50, m, sqrt(s))
mean(x); var(x)
dev.off()
par(mfrow = c(1, 3))

### 1a) Graph. test qqnorm, qqline
qqnorm(x)
qqline(x, col='blue')


### 1b) Graph. test - hist
hist(x, freq = F)
curve(dnorm(x, m, sqrt(s)), add=TRUE, col='magenta', lwd=2)
curve(dnorm(x, m+2, sqrt(s)), add=TRUE, col='blue', lwd=2)

### 1c) Graph. test - ecdf-empirical cum.dist.func
f = ecdf(x)
plot(f, verticals = TRUE, do.points = FALSE)
#plot(x, f(x))
curve(pnorm(x, m, sqrt(s)), add =  T, col = 'magenta', lwd = 2)


# 2a) Analytic test - Kolmogorov-Smirnov
ks.test(x, "pnorm", m, sqrt(s))$p.value
ks.test(x, "pnorm", m, s)
set.seed(12345)
y = rnorm()


m=9;s=9; set.seed(12)
x = rt(50, 15); x
ks.test(x, "pt", df = 15)$p.value


