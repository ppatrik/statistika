# nahodne vygenerovanych 100 cisel zo standardneho normalneho rozdelenia
x=rnorm(100);

# korelacia je 1/-1, lebo su linearne zavisle
cor(x,2*x);
cor(x,-0.1*x);

plot(x,2*x);
lines(x,-0.1*x,type="p",col='red');

# nahodna mnozina bodov z normalneho rozdelenia 
# - preto velmi nie su pri krajoch, ale zgrupuju sa v strede
x=rnorm(100);
y=rnorm(100);
plot(x,y);

y=exp(x);
plot(x,y);

# to predbieha...
cor(x,y,method="pearson");
cor(x,y,method="spearman");

# nastavi seed, takze kazde vygenerovane nahodne normalne rozdelenie bude rovnake
set.seed(123);
N=100;
x=rnorm(N);
y=x+rnorm(N);

# to iste, ako plot(x,y)
plot(y ~ x);
abline(lm(y ~ x), col="red")