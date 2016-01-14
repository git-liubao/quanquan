function obj = objfn2( C, index )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
Cons = C(1:5);%约束的值139.53-163.8
pnc = C(6:10);%nn/Cons的比例0-1
pab = C(11:15);%aa-1/bb的比例0.001-1

nn = Cons.*pnc;
ab=Cons-nn;
bb = sqrt(ab./pab);
aa = pab.*bb+1;

load('./data/data.mat');

xm       = xms{index};

x        = MTHS_by_gammafeat( nn,aa,bb,xm);

entropy = 0;
[m n ] = size(x);

for col = 1:n
    for row = 1:m
        e = -1 * x(row, col) * log(x(row, col) + 0.0000001);
        entropy = entropy +e;
    end
end
obj = -1 * entropy;
end

