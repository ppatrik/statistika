x = c(3062.6, 3062.8, 3062.8, 3063.1, 3063, 3062.7, 3062.7, 3062.5, 3062.9); x
gama = 0.95; gama

# pre m
priemer = mean(x); priemer
s2 = var(x); s2
tgama = (1+gama)/2; tgama
tgamaMinus = (1-gama)/2; tgamaMinus
n = length(x); n
kvantil = qt(tgama, n - 1); kvantil
dolnaHranica = priemer - (kvantil*(sqrt(s2)/sqrt(n))); dolnaHranica
hornaHranica = priemer + (kvantil*(sqrt(s2)/sqrt(n))); hornaHranica


# pre sigma^2
kvantilPlus = qchisq(tgama, df=n-1); kvantilPlus
kvantilMinus = qchisq(tgamaMinus, df=n-1); kvantilMinus

dolnaHranica = (n-1)*s2/kvantilPlus; dolnaHranica
hornaHranica = (n-1)*s2/kvantilMinus; hornaHranica
