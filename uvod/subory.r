getwd()
R.home()
dir(getwd())

z=matrix(1:12, 3,4,byrow=T)
write.csv(z, file="data.csv", row.names=F)

zz=read.csv("data.csv"); zz

z; zz

z=matrix(1:12, 3,4,byrow=T)
write.table(z, file="data.csv", sep = ";", col.names = NA, qmethod = "double")
zz = read.table("data.csv", header = T, sep = ";", row.names = 1); zz
t(zz)

list.files(R.home())

dat = read.table(text = "
female  apcalc  admit  num
1   2   3   4
5   6   7   8
9   10	11  12", header = T); dat
