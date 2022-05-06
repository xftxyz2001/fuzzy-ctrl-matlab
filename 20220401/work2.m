clc;
close all;
tic;
x = [-1, 0, 1, 2, 3, 4, 5, 6];
y  =abs(0.05 * x .^ 3 - 0.35 * x .^ 2 + 0.2 * x + 0.6);
u = x(y ~= 0);
v = x(y == 1);
toc;
