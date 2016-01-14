function [ APBI ] = API218( AP )
%blendingindexjisuan是计算每个组分的混合指数的函数
%   AP表示每个组分的苯胺点
m=AP.*0.003652;
APBI=exp(m);


end

