clc;
close all;
tic;
x = 1: 0.001: 5;
A = -0.11 * x .^ 2 + 0.66 * x - 0.01;
figure;
plot(x, A);
box off;
toc;
