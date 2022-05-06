x = [0, 1, 2, 3, 4];
A = [0, 0.2, 0.8, 0.6, 1];
B = [0.3, 0.7, 0.9, 0, 0.5];

xmin = min(x);
xmax = max(x);
ymax = max(A);

figure(1);
stem(x, A);
axis([xmin - 0.2, xmax + 0.5, 0, 1.05 * ymax]);
box off;

figure(2);
stem(x, B);
axis([xmin - 0.2, xmax + 0.5, 0, 1.05 * ymax]);
box off;

[~, N] = size(x);
T = ones(1, N);
AC = T - A;
BC = T - B;

figure(3);
plot(x, A, '-b', 'LineWidth', 1);
hold on;
plot(x, B, '-r', 'LineWidth', 1);
hold on;
plot(x, AC, '--b', 'LineWidth', 1);
hold on;

