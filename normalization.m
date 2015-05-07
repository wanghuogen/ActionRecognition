function normal = normalization(x,kind)%�������ݺ�Ҫ�淶�ı�׼
 
if nargin < 2
 
    kind = 2;%kind = 1 or 2 ��ʾ��һ���ڶ���淶��
 
end
 
[m,n]  = size(x);
 
normal = zeros(m,n);%����ȫ��0�ķ���
 
%% normalize the data x to [0,1]%�黯��0-1
 
if kind == 1  
 
    for i = 1:m
 
        ma = max( x(i,:) );
 
        mi = min( x(i,:) );
 
        normal(i,:) = ( x(i,:)-mi )./( ma-mi );
 
    end
 
end
 
%% normalize the data x to [-1,1]
 
if kind == 2
 
    for i = 1:m
 
        mea = mean( x(i,:) );
 
        va = var( x(i,:) );
 
        normal(i,:) = ( x(i,:)-mea )/va;
 
    end
 
end