function [ a1 ] = conv_mat2_to_mat1( a )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
a11=a';%molefrac为摩尔分数矩阵，一维
a111=a11(:);
a1=a111';

end

