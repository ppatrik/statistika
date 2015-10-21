plot(1)
curve(sin, -pi, pi)
curve(cos, -pi, pi, add = T, col="red", n=6)
dev.off()

# vektory
x=seq(-pi, pi, .5)
y1 = sin(x)
y2 = cos(x)
plot(x, y1, type="l")
lines(x, y2, col="red")
points(x, y2, col="green")

matplot(x, y1, type = "l")
matplot(x, y1, type = "l", col="red", add = T)

par(mfrow = c(2,1))
plot(x, y1, type = "l")
points(x, y2, type="l", col="red")

plot(x,y1, type="l", lty="dotted")
dev.off()


plot(y1, y2)
plot(y1, y2, type="l")

par(mfrow = c(2,1), mar = c(1,4,2,2))
dev.off()
x = seq(-pi, pi, .2); y = sin(x); z = cos(x)
split.screen(c(2,2)); screen(3)
plot(x, y)
lines(x, z)
