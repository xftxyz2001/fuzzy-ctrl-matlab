clc;
% clear all;
clear;
close all;
tic;

x = -5:0.01:4;
xmin = min(x);
xmax = max(x);
ymin = 0;
ymax = 1.05;

A = ((x >= -5 & x <= 1) .* (x + 5) / 6) + ((x > 1 & x <= 4) .* 2.^(-x + 1));
B = exp(-abs(x + 1) / 7);

AandB = min(A, B);
AorB = max(A, B);

AC = 1 - A;
AandAC = min(A, AC);
AorAC = max(A, AC);

BC = 1 - B;
BandBC = min(B, BC);
BorBC = max(B, BC);

figure(1);
plot(x, A, '-g', 'LineWidth', 1);
hold on;
plot(x, B, '--r', 'LineWidth', 1);
xlabel('x');
ylabel('Membership Function');
legend('A', 'B', 'location', 'best');
axis([xmin, xmax, ymin, ymax]);
box off;

figure(2);
plot(x, AandB, '-g', 'LineWidth', 1);
hold on;
plot(x, AorB, '--r', 'LineWidth', 1);
xlabel('x');
ylabel('Membership Function');
legend('A∩B', 'A∪B', 'location', 'best');
axis([xmin, xmax, ymin, ymax]);
box off;

figure(3);
plot(x, AandAC, '-g', 'LineWidth', 1);
hold on;
plot(x, AorAC, '--r', 'LineWidth', 1);
xlabel('x');
ylabel('Membership Function');
legend('A∩A^C', 'A∪A^C', 'location', 'best');
axis([xmin, xmax, ymin, ymax]);
box off;

figure(4);
plot(x, BandBC, '-g', 'LineWidth', 1);
hold on;
plot(x, BorBC, '--r', 'LineWidth', 1);
xlabel('x');
ylabel('Membership Function');
legend('B∩B^C', 'B∪B^C', 'location', 'best');
axis([xmin, xmax, ymin, ymax]);
box off;
toc;
