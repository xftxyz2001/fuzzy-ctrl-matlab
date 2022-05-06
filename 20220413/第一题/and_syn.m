% 编写对应的W=A∩(B⸰C)的3输入1输出的子程序文件and_syn.m（可以利用syn.m嵌套子程序）
function D = and_syn(A, B, C)
    D = min(A, syn(B, C));
end
