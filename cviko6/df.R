# vygeneruje 100-prvkovy nahodny vektor zo standardneho normalneho rozdelenia
x = rnorm(100)
mean(x);
var(x); # sigma na 2
sd(x); # sigma
x;
# su aj funkcie min,max,sum,cummax

# m je 55 a sigma (nie na druhu!) je 11
x = rnorm(10,55,11);
x;

diff(x); # x2-x1, x3-x2, x4-x3,...

# indexy poradia od najmensieho prvku
order(x);
x[order(x)] # to iste by urobil aj sort(x)

# x aj y musi mat rovnaky pocet prvkov - v podstate je to tabulka
df = data.frame(x=c(1,2,5), y=c("ahoj", "cau", "h"));
df;

# dolezite!!!
df = data.frame(x=c(1,2,5,2), y=c(4,7,3,6));
sort(df$x);

# toto je ako order by x v databaze
i = order(df$x);
df[i,]