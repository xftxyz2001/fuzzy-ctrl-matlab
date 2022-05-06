function W = and_syn(A, B, C)
    %and_syn - Description
    %
    % Syntax: W = and_syn(A, B, C)
    %
    % Long description
    X = syn(B, C);
    W = min(X, A);
end
