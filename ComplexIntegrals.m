clc
clear all

fun = @(z) log(2+z);
g1 = @(t) t + 1i*(t - 1);
g1prime = @(t) 1 + 1i;
q1 = integral(@(t) fun(g1(t)).*g1prime(t),0,1)

g2 = @(t) 1-t + 1i*(t);
g2prime = @(t) -1 + 1i;
q2 = integral(@(t) fun(g2(t)).*g2prime(t),0,1)

g3 = @(t) -t + 1i*(1 - t);
g3prime = @(t) -1 - 1i;
q3 = integral(@(t) fun(g3(t)).*g3prime(t),0,1)

g4 = @(t) t -1 + 1i*(-t);
g4prime = @(t) 1 - 1i;
q4 = integral(@(t) fun(g4(t)).*g4prime(t),0,1)

s = q1 + q2 + q3 + q4;

