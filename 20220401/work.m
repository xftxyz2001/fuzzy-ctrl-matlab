clc;
close all;
tic;
U1 = [1, 2, 3, 4, 5, 6];
U2 = 1: 0.001: 6;

x = U1;
A = -0.14 * x .^ 2 + 0.97 * x - 0.69; % A(x)=-0.14x²+0.97x-0.69
xmin = min(x);
xmax = max(x);
ymin = min(A);
ymax = max(A);
figure;
stem(x, A);
axis([xmin - 0.2, xmax + 0.2, ymin - 0.2, ymax + 0.2]);
box off;

x = U2;
A = -0.14 * x .^ 2 + 0.97 * x - 0.69; % A(x)=-0.14x²+0.97x-0.69
xmin = min(x);
xmax = max(x);
ymin = min(A);
ymax = max(A);
figure;
plot(x, A);
axis([xmin - 0.2, xmax + 0.2, ymin - 0.2, ymax + 0.2]);
box off;

toc;
