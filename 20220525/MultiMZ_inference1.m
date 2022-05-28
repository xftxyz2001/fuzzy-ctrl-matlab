function c = MultiMZ_inference1(A, B, C, a, b)
    A = A'; a = a';
    D = syn(A, B);
    d = syn(a, b);
    lambda = max(max(min(D, d)));
    c = min(lambda, C);
end
