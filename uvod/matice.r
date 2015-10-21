## Matice
z=1:12

# pole do matice:
# 1.
dim(z) = c(3,4); z
# 2.
attr(z, "dim") = c(2, 6); z
# 3. 
z = matrix(1:12, 3, 4); z

# vypis matice
z; 
# vypis transponovanej matice
t(z)

# vypis len 2,3 stlpca
z[,2:3]
# vypis okrem 2,3 stlpca
z[,-(2:3)]

# scitanie po stlpcoch
apply(z, 2, sum)
# scitanie po riadkoch
apply(z, 1, sum)

x=1:4; x
is.array(x)

x = as.matrix(x)
is.array(x)

# kumulativna suma pola
x = 1:9
cbind(x, cumsum(x))
rbind(x, cumsum(x))
