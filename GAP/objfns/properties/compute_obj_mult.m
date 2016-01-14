function [ obj ] = compute_obj_mult( Chrom )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
[mu,nu]=size(Chrom);
obj = zeros(mu,1);
for i=1:mu
   Chrom(i,:);
   obj(i) =computeObj(Chrom(i,:));
end
end

