function [W,H] = NMF(V,R,K)
% NMF - 采用迭代相乘法实现非负矩阵分解
% 参数说明：
% V - 待分解的矩阵
% R - 分解后的矩阵的秩
% K - 迭代次数
% W,H - 输出结果，即 V = W * N
[m,n] = size(V);
W = abs(rand(n,R));
H = abs(rand(R,m));
for i = 1:K
    H = H .* (W'*V) ./ ((W'*W)*H);
    W = W .* (V*H') ./ (W*(H*H'));
end
end