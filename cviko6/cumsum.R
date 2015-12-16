# tabulka s kumulativnym suctom
x=1:10;
cbind(x, cumsum(x));

x=1:10;
sum((x - mean(x))^2) / (length(x)-1) # to je vlastne sd(x)^2
