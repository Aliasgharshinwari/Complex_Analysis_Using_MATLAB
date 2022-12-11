clc
clear all

fun = @(z) log(z - 1)./(z - 5);
g = @(t) 4 + (2 * exp(1i * t));
gprime = @(t) 2 * 1i * exp(1i * t);
q = integral(@(t) fun(g(t)).*gprime(t),0,2*pi)