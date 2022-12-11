clc
clear all

fun = @(z) cosh(4 * z);

C = [0 2i];
q = integral(fun,0,2i,'Waypoints',C)