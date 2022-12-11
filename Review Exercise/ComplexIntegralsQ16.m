clc
clear all

fun = @(z) (4 * z.^3) + (2 * z);

C = [-i 2+i];
q = integral(fun,-i,2+i,'Waypoints',C)