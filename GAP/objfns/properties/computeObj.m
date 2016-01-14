function [ obj ] = computeObj( chrom )
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
n=chrom(1:5)';
a=chrom(6:10)';
b=chrom(11:15)';

obj  = objec_func(n,a,b);

end

