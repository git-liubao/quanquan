function [ x ] = MTHS_by_gammafeat( nn,aa,bb,xm)
%Ϊ��֪gamma�ֲ��ͷѵ���������µķ��Ӿ���Ħ���������ĺ�����TbΪ�е����n,a,b�ֱ�Ϊgamma�ֲ���yita������������������
%   �е����ÿһ�з���һ��gamma�ֲ���ÿһ�ж���n��a��b������������Ϊһ�����еľ���,xmΪ���Ƶ�ÿһ��ͬϵ��ٷֱȵĺ͡�




Tb=[-42.04 0 0 0 0;
-0.5	-11.72	-6.24	0	0;
36.07	27.84	30.07	49.25	0;
68.73	61.77	63.48	80.72	80.09;
98.43	90.95	93.64	98.12	110.63;
125.68	118.1	121.26	126.9	139.53;
150.82	143.32	146.868	152.16	163.8;
174.16	166.41	170.6	176.03	184.54;
195.928	177.49	192.67	203.15	212.77;
216.323	211.2 0 0 0];

[m,n]=size(Tb);
y=zeros(m,n);
for j=1
    for i=1
        y(i,j)=gamcdf(Tb(i,j)-nn(j),aa(j),bb(j));
    end
end
for j=1
    for i=2:m
        y(i,j)=gamcdf(Tb(i,j)-nn(j),aa(j),bb(j))-gamcdf(Tb(i-1,j)-nn(j),aa(j),bb(j));
    end
    
end
for j=2
    for i=2
        y(i,j)=gamcdf(Tb(i,j)-nn(j),aa(j),bb(j));
    end
end
for j=2
    for i=3:m
        y(i,j)=gamcdf(Tb(i,j)-nn(j),aa(j),bb(j))-gamcdf(Tb(i-1,j)-nn(j),aa(j),bb(j));
    end
    
end
for j=3
    for i=1
        y(i,j)=gamcdf(Tb(i,j)-nn(j),aa(j),bb(j));
    end
end
for j=3
    for i=2:m-1
        y(i,j)=gamcdf(Tb(i,j)-nn(j),aa(j),bb(j))-gamcdf(Tb(i-1,j)-nn(j),aa(j),bb(j));
    end
    
end
for j=4
    for i=2
        y(i,j)=gamcdf(Tb(i,j)-nn(j),aa(j),bb(j));
    end
end
for j=4
    for i=3:m-1
        y(i,j)=gamcdf(Tb(i,j)-nn(j),aa(j),bb(j))-gamcdf(Tb(i-1,j)-nn(j),aa(j),bb(j));
    end
    
end
for j=5
    for i=3
        y(i,j)=gamcdf(Tb(i,j)-nn(j),aa(j),bb(j));
    end
end
for j=5
    for i=4:m-1
        y(i,j)=gamcdf(Tb(i,j)-nn(j),aa(j),bb(j))-gamcdf(Tb(i-1,j)-nn(j),aa(j),bb(j));
    end
    
end
x=y;
[p,q]=size(y);
sum1=sum(y);
for j=1:q
    for i=1:p
        x(i,j)=xm(j)*y(i,j)/sum1(j);
    end
end
   
end

