m = matrix(cbind(1:6), 2, 3, TRUE);

kvad = function(x)
{
  x^2;
}

kvad(m)

polynom = function(x, a)
{
  y=0;
  for(i in 1:length(a))
  {
    y = y + a[i]*x^(i-1);
  }
  y;
}

polynom(m, c(0,1,1))
