help(plotmath)
example(plotmath)
demo(plotmath)

kvad = function(x)
{
  x^2
}

x = c(-1,0,1,2,3)
kvad(x)[]
kvad(-3)

for(i in c(1:3)) print(2^(i-1))
x = 1:5; for(i in 1:length(x)) print(x[i]^(i-1))
if(identical(2,3-1)) print('===')

polynom = function (x, a)
{
  y = 0
  for(i in 1:length(a)) {
    y = y+ a[i] * x^(i-1)
  }
  y
}
polynom(2,c(0,0,1))
polynom(2,c(1,-1,0,1))

print(polynom)
# same
polynom


lm
