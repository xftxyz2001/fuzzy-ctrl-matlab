% X=(A∩B)⸰C和Y=(A⸰C)∪(B⸰C)的3输入2输出子程序mix_fop（可以利用syn.m嵌套子程序）
function [X, Y] = mix_syn(A, B, C)
    X = syn(min(A, B), C);
    Y = max(syn(A, C), syn(B, C));
end
