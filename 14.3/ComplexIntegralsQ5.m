clc
clear all

fun = @(z) (z + 2)./(z-2);
g = @(t) 1 + 2 * exp(1i * t);
gprime = @(t) 2 * 1i * exp(1i * t);
q = integral(@(t) fun(g(t)).*gprime(t),0,2*pi)