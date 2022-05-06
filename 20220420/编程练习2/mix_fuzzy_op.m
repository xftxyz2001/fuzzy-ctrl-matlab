function [X, Y] = mix_fuzzy_op(A, B, C)
    %mix_fuzzy_op - Description
    %
    % Syntax: [X, Y] = mix_fuzzy_op(A, B, C)
    %
    % Long description
    AC = 1 - A;
    BC = 1 - B;
    CC = 1 - C;

    AT = A.';
    % BT = B.';
    CT = C.';

    X = syn(max(min(A, BC), AC), min(CT, CC));
    Y = syn(min(B, AC), max(syn(AT, B), C));
end
