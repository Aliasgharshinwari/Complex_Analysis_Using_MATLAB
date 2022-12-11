clc
clear all

fun = @(z) z.^2;
g1 = @(t) t - 1i;
g1prime = @(t) 1;
q1 = integral(@(t) fun(g1(t)).*g1prime(t),-1,1)

g2 = @(t) 1 + 1i*(t);
g2prime = @(t) 1i;
q2 = integral(@(t) fun(g2(t)).*g2prime(t),-1,1)

g3 = @(t) -t + 1i*(1);
g3prime = @(t) -1;
q3 = integral(@(t) fun(g3(t)).*g3prime(t),-1,1)

g4 = @(t) -1 + 1i*(-t);
g4prime = @(t) -1i;
q4 = integral(@(t) fun(g4(t)).*g4prime(t),-1,1)

s = q1 + q2 + q3 + q4;

