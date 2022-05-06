close all;

% 论域U=[-4,9]，A, B∈F (U)

x = -4:0.01:9;

A = ((x >= -4 & x < 3) .* (x + 4) / 7) + ((x >= 3 & x <= 9) .* (9 - x) / 6);
B = exp(-abs(x - 2) / 8);

ymax = max(max(A), max(B));

figure(1);
plot(x, A, '-g', 'LineWidth', 1);
hold on;
plot(x, B, '-.k', 'LineWidth', 1);
axis([-3, 10, 0, 1.05 * ymax]);
box off;
xlabel('x');
ylabel('Membership Function');
legend('A', 'B', 'location', 'best');

AJB = min(A, B);
ABB = max(A, B);

figure(2);
plot(x, AJB, '-g', 'LineWidth', 1);
hold on;
plot(x, ABB, '-.k', 'LineWidth', 1);
axis([-3, 10, 0, 1.05 * ymax]);
box off;
xlabel('x');
ylabel('Membership Function');
legend('A∩B', 'A∪B', 'location', 'best');

AJAC = min(A, 1 - A);
ABAC = max(A, 1 - A);

figure(3);
plot(x, AJAC, '-g', 'LineWidth', 1);
hold on;
plot(x, ABAC, '-.k', 'LineWidth', 1);
axis([-3, 10, 0, 1.05 * ymax]);
box off;
xlabel('x');
ylabel('Membership Function');
legend('A∩A^C', 'A∪A^C', 'location', 'best');

BJBC = min(B, 1 - B);
BBBC = max(B, 1 - B);

figure(4);
plot(x, BJBC, '-g', 'LineWidth', 1);
hold on;
plot(x, BBBC, '-.k', 'LineWidth', 1);
axis([-3, 10, 0, 1.05 * ymax]);
box off;
xlabel('x');
ylabel('Membership Function');
legend('B∩B^C', 'B∪B^C', 'location', 'best');
