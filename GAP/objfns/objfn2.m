function obj = objfn2( C, index )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
Cons = C(1:5);%Լ����ֵ139.53-163.8
pnc = C(6:10);%nn/Cons�ı���0-1
pab = C(11:15);%aa-1/bb�ı���0.001-1

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

