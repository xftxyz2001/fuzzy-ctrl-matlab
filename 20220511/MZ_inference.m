function Bx = MZ_inference(A, B, Ax)
    R = syn(A.', B);
    Bx = syn(Ax, R);
end
