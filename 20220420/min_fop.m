function [X, Y] = min_fop(A, B, C)
    %min_fop - Description
    %
    % Syntax: [X, Y] = min_fop(A, B, C)
    %
    % Long description
    Q = min(A, B); X = syn(Q, C);
    P = syn(A, C); V = syn(B, C); Y = max(P, V);
end
