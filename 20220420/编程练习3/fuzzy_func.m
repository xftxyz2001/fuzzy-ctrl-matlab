function X = fuzzy_func(A, B, C)
    %fuzzy_func - Description
    %
    % Syntax: X = fuzzy_func(A, B, C)
    %
    % Long description
    BC = 1 - B;
    X = max(A, min(BC, C));
    figure;
    stem(X);
    box off;
end
