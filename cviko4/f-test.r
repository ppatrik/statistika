# Jednovyberova analyzy - jednovyberovy t-test
x = c(1.6,1.88,2.1,1.66,1.93,1.73,1.74,2.06)

tt = t.test(x, y = NULL, alternative = "greater", mu = 1.75)
tt$p.value

# ----------------------------------------------
# Dvojvyberova analyza - jednovyberovy t-test

# H0: sigma's^2 = sigma'n^2, H1: sigma's^2 != sigma'n^2  ----- F-Test - ci su disperzie rovnake
# H0: m's = m'n, H1: m's < m'n ------ T-Test 

y1 = c(8.6,8.8,8.4,8.6,8.7,8.5,8.5)
y2 = c(8.6,8.9,8.8,8.9,8.7,8.6,9,8.5,8.6,8.7,8.7)
# zmena hodnot
y1 = c(8,9.4,8.4,8.6,8.7,8.5,8.5)
y2 = c(8.6,8.9,8.8,8.9,8.7,8.6,9,8.5,8.6,8.7,8.7)
v1 = var(y1); v2 = var(y2)
v1; v2
v1/v2
var.test(y1, y2, ratio = 1, alternative = "two.sided")

mean(y1); mean(y2)
if(v$p.value < 0.05) {
  'H0 zamietame'
  v = t.test(y1, y2, var.equal = T, alternative = "less", alpha = 0.05)
  v$p.value
} else {
  'H0 nezamietame'
  v = t.test(y1, y2, var.equal = F, alternative = "less", alpha = 0.05)
  v$p.value
}
