function [ m ] = equation345( a,b )
%equation345为计算平均性质的函数，
%   a为性质矩阵，b为质量（或体积或摩尔）分数矩阵
m=sum(sum(a.*b));

end

