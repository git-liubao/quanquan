function [ obj ] = computeObj( chrom )
%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
n=chrom(1:5)';
a=chrom(6:10)';
b=chrom(11:15)';

obj  = objec_func(n,a,b);

end

