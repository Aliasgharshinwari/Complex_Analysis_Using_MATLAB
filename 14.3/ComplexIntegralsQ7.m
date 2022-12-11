clc
clear all

fun = @(z) (sinh(pi * z))./(z.^2-3 * z);
g = @(t) 3 * exp(1i * t);
gprime = @(t) 3 * 1i * exp(1i * t);
q = integral(@(t) fun(g(t)).*gprime(t),0,2*pi)