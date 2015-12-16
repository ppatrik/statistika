kvad = function(x)
{
  x^2;
}

# vypocita hodnotu kvad pre 1. az 3.prvok
x=c(-1,0,1,2);
kvad(x)[1:3];

for(i in c(1:3)) 
  print(2^(i-1));

# viac prikazov by sme tiez obalili do zatvoriek
x=1:5;
for(i in 1:length(x)) 
{
  print(x[i]^(i-1))
}

# vypocita hodnotu polynomu s koeficientmi a (od najnizsieho stupna) v bode x
polynom = function(x, a)
{
  y=0;
  for(i in 1:length(a))
  {
    y = y + a[i]*x^(i-1);
  }
  y;
}
polynom(2, c(0,0,1))

# ekvivalentne prikazy, vypisu telo metody
print(polynom)
polynom


