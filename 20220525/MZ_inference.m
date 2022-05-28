function b = MZ_inference(A, B, a)
    lambda = max(min(a, A));
    b = min(lambda, B);
end
