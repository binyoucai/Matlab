%定义迭代函数Root求开根，ak1为开方数、e为误差值
%返回值ak2为近似开根数，k为迭代次数
%函数开始
function [ ak2,k ] =Root(ak1,e)
%初始化ak2的值
ak2=(ak1+3/ak1)/2;
%初始化k值
k=1;
%迭代算法开始
while abs(ak1-ak2)>=e
    ak1=ak2;
    ak2=(ak1+3/ak1)/2;
    k=k+1;
end
%迭代算法结束
end
%函数结束
