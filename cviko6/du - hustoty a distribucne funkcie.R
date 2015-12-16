### CHI-KVADRAT rozdelenie

# kvantily pre delty od 0 po 1 s krokom 0.01, stupen volnosti 5
# v podstate su nam na to, aby sme vedeli, kde mame vykreslovat graf (na akom intervale) - islo by to aj v obycajnym vektorom 1:100
y = qchisq(cbind(seq(0,1,length.out=101)),5); y;
# hustota
plot(y,dchisq(y,5));
# distribucna funkcia
plot(y,pchisq(y,5));

### T rozdelenie

y = qt(cbind(seq(0,1,length.out=101)),5); y;
plot(y,dt(y,5));
plot(y,pt(y,5));

### F rozdelenie

y = qf(cbind(seq(0,0.7,length.out=101)),5,2); y; # je tam 0.7 namiesto 1, aby nebol graf prilis dlhy
plot(y,df(y,5,2));
plot(y,pf(y,5,2))