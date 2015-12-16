# kvantil hladiny 0 v standardnom normalnom rozdeleni
qnorm(0,0,1);

# ake musi byt x, aby pravdepodobnost, ze ksi < x, bola 1/2?
# cize kvantil urovne 1/2 pre normalne rozdelenie s parametrami 0 a 1
qnorm(1/2,0,1);
qnorm(1/2,99,1);
qnorm(1,99,1);

seq(-2,2,length=11) # length spravi to iste co lenght.out
seq(-2,2,0.4)

x = seq(11,19,length.out=41); 
x;
# hodnoty hustoty normalneho rozdelenia s parametrami 15 a 1
y = dnorm(x, mean=15, sd=1) 
plot(x,y)

# hodnoty distribucnej funkcie
f = pnorm(x, mean=15, sd=1)
plot(x,f)

# ako vygenerovat ten isty graf - dnorm je vzorec pre hustotu normalneho rozdelenia
par(mfrow=c(2,1))
plot(x, dnorm(x,15), "l")
s2=1;
m=15;
y=1/sqrt(2*pi*s2)*exp(-(x-m)^2/(2*s2));
plot(x,y,"l")