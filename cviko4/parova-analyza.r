# Parova analyza
x = c(69,   67.7,   66, 63.5, 62, 61)
y = c(68.8,   68, 65.5, 62.6, 61, 60)

# parovy test
t.test(x, y, paired = T)

z = x-y; z
# jednovyberovy
t.test(z)

# summary(z)
