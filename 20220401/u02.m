% x = [1, 2, 3, 4, 5, 6, 7, 8, 9];
% AC = ones(size(x)) - A;
% AC = 1 - A;

% trimf 三角形

x = -4:0.001:9;
t = size(x); % [行数, 列数]
A = zeros(t); % 分配空间

for i = 1:t(2)

    if x(i) >= -4 && x(i) <= 3
        A(i) = (x(i) + 4) / 7;
    else
        A(i) = (9 - x(i)) / 6;
    end

end

% 实线-
% 点划线-.

% axis 坐标轴控制

% latex?
% 事物和事物之间某种单向的关系：二元关系

A = [0.7, 0.1; 0.3, 0.9];
B = [0.4, 0.9; 0.1, 0.1];

AC = ones(size(A)) - A;
BC = ones(size(B)) - B;

AandB = min(A, B);
AorB = max(A, B);

% 共轭转置
% 伴随矩阵 <> 伴随阵
% 对于实数矩阵，'代表的就是转置
% 对于复数矩阵，'代表的就是共轭转置

% 特征值/特征向量
