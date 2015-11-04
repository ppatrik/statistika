l= list(a=1, b=2, c="hehe")
str(l)
attributes(l)

x =1:3; x
names(x) = letters[1:3]; x

x = rnorm(100); x
x = rnorm(100); mean(x); var(x)

x; 
diff(x); 
x[order(x)]

df = data.frame(x=c(1,2,5), y=c("a", "ha", "lili")); df

df = data.frame(x=c(1, 2, 5, 2), y=c(4, 7, 3, 6)); df
sort(df$x)
i é order(df$x); i
df[i,]

df[rev(order(df$y)),]

x = 1:10; cbind(x, cumsum(x))

sum((x-mean(x))^2/(length(x)-1))
sd(x)^2
var(x)



par(mfrow=c(1,2))
x =rnorm(100)
cor(x, 2*x); cor(x, -2*x)
plot(x, 2*x)
plot(x, -2*x)



par(mfrow=c(1,1))
x =rnorm(100)
cor(x, 2*x); cor(x, -.1*x)
plot(x, 2*x)
lines(x, -.1*x,type="p",col="red")

x = rnorm(100); y = rnorm(100); 
plot(x, y)


y = exp(x); plot(x, y)
cor(x, y, method="phearson")
cor(x, y, method="spearman")

set.seed(123); N = 100; x = rnorm(N)
y = x+rnorm(N); plot(y~x); abline(lm(y~x), col="red")


qnorm(0,0,1)
qnorm(1/2,0,1)
qnorm(1/2,99,1)
qnorm(1,99,1)
