function [ obj ] = compute_obj_mult( Chrom )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
[mu,nu]=size(Chrom);
obj = zeros(mu,1);
for i=1:mu
   Chrom(i,:);
   obj(i) =computeObj(Chrom(i,:));
end
end

