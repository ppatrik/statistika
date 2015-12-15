
# 1) horna a dolna hranica

x = c(5.03,5.06,5.2,5.04,5.02)

# pre m
gamma = 0.95
n = length(x) # =COUNT(B3:J3)
priemer = mean(x) # =AVERAGE(B3:J3)
kvantil = qt((1+gamma)/2, n-1) # =T.INV(C9;(C10-1))
s2n_1 = var(x) # =VAR(B3:J3)
md = priemer - kvantil*sqrt(s2n_1/n); md # =C7-(C11*(SQRT(C8)/SQRT(C10)))
mh = priemer + kvantil*sqrt(s2n_1/n); mh # =C7+(C11*(SQRT(C8)/SQRT(C10)))

# pre sigma^2
sd = (n-1)*s2n_1 / qchisq((1+gamma)/2, df=n-1); sd
sh = (n-1)*s2n_1 / qchisq((1-gamma)/2, df=n-1); sh

mDolnaHranica <- function(x, gamma) {
  n = length(x) # =COUNT(B3:J3)
  priemer = mean(x) # =AVERAGE(B3:J3)
  kvantil = qt((1+gamma)/2, n-1) # =T.INV(C9;(C10-1))
  s2n_1 = var(x) # =VAR(B3:J3)
  md = priemer - kvantil*sqrt(s2n_1/n); md # =C7-(C11*(SQRT(C8)/SQRT(C10)))
}
mDolnaHranica(x, 0.95)

# =MININVERSE(matica) =MMULT(matica1, matica2) -- F2, potom crtl+shift+enter

# 2) jednovyberova analyza
x = c(1.6,1.88,2.1,1.66,1.93,1.73,1.74,2.06)

t.test(x, y = NULL, alternative = "greater", mu = 1.75)$p.value

# 3) dvojvyberova analyza
povodna = c(2.5, 2.8, 2.3, 2.2, 2.7, 2.1, 2.2, 2.4)
nova =    c(2.6, 2.8, 2.6, 2.6, 2.7, 2.5, 2.3) 

v = var.test(povodna, nova, ratio = 1, alternative = "two.sided")
if(v$p.value < 0.05) {
  'H0 zamietame'
} else {
  'H0 nezamietame'
}
v = t.test(povodna, nova, var.equal = v$p.value < 0.05, alternative = "less", alpha = 0.05)
v$p.value
if(v$p.value < 0.05) {
  'H0 zamietame'
} else {
  'H0 nezamietame'
}

# 4) parova analyza
x = c(69,   67.7,   66, 63.5, 62, 61)
y = c(68.8,   68, 65.5, 62.6, 61, 60)

v = t.test(x, y, paired = T)
v$p.value

# potom zo zedka vieme jednovyberovu analyzu ak berieme rozdiel
z = x - y
v = t.test(z)
v$p.value

# 5) ktora funkcia lepsie aproximuje data
x = c(0.5,1.2,1.3,1.4,1.8,1.9); 
y = c(4.297443,7.640234,8.338593,9.110400,13.099295,14.371789)

plot(x, y)
z1 = exp(x); z1
z2 = log(x); z2
points(x, z1, col='blue')
points(x, z2, col='red')

y_z1 = lm(y~z1)$coefficients[1] + lm(y~z1)$coefficients[2] * exp(x)
lines(x,y_z1,col='red') 
y_z2 = lm(y~z2)$coefficients[1] + lm(y~z2)$coefficients[2] * log(x)
lines(x,y_z2,col='blue') 

