close all;

% 论域U={-2,-1,0,1,2,3,4}，A, B∈F (U)。
x = [-2, -1, 0, 1, 2, 3, 4];
xmin = min(x);
xmax = max(x);

A = 0.06 * x.^2 - 0.24 * x + 0.27;
B = -0.11 * x.^2 + 0.22 * x + 0.89;
ymax = max(max(A), max(B));

figure(1);
stem(x, A);
title('A');
axis([xmin - 0.2, xmax + 0.2, 0, 1.05 * ymax]);
box off;

figure(2);
stem(x, B);
title('B');
axis([xmin - 0.2, xmax + 0.2, 0, 1.05 * ymax]);
box off;

AC = 1 - A;
BC = 1 - B;

figure(3);
stem(x, AC);
title('A^C');
axis([xmin - 0.2, xmax + 0.2, 0, 1.05 * ymax]);
box off;

figure(4);
stem(x, BC);
title('B^C');
axis([xmin - 0.2, xmax + 0.2, 0, 1.05 * ymax]);
box off;

AJB = min(A, B);
ABB = max(A, B);

figure(5);
stem(x, AJB);
title('A∩B');
axis([xmin - 0.2, xmax + 0.2, 0, 1.05 * ymax]);
box off;

figure(6);
stem(x, ABB);
title('A∪B');
axis([xmin - 0.2, xmax + 0.2, 0, 1.05 * ymax]);
box off;

AJAC = min(A, AC);
ABAC = max(A, AC);

figure(7);
stem(x, AJAC);
title('A∩A^C');
axis([xmin - 0.2, xmax + 0.2, 0, 1.05 * ymax]);
box off;

figure(8);
stem(x, ABAC);
title('A∪A^C');
axis([xmin - 0.2, xmax + 0.2, 0, 1.05 * ymax]);
box off;

BJBC = min(B, BC);
BBBC = max(B, BC);

figure(9);
stem(x, BJBC);
title('B∩B^C');
axis([xmin - 0.2, xmax + 0.2, 0, 1.05 * ymax]);
box off;

figure(10);
stem(x, BBBC);
title('B∪B^C');
axis([xmin - 0.2, xmax + 0.2, 0, 1.05 * ymax]);
box off;

AJB_C = 1 - AJB;
ABB_C = 1 - ABB;

figure(11);
stem(x, AJB_C);
title('(A∩B)^C');
axis([xmin - 0.2, xmax + 0.2, 0, 1.05 * ymax]);
box off;

figure(12);
stem(x, ABB_C);
title('(A∪B)^C');
axis([xmin - 0.2, xmax + 0.2, 0, 1.05 * ymax]);
box off;
