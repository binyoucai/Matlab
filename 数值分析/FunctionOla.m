%定义欧拉法函数FunctionOla,传入参数f为微积分函数,y0为初始值，a和b分别是区间上下限
%返回值,yy为所有解的向量集合
%函数开始
function [yy,xx] = FunctionOla( f,y0,a,b,n)
y=y0;
h=(b-a)/n;
%定义一个空向量，存储每次的y值
yy=[];
xx=[];
for i=0:n-1
    %以下为了实验结果观察，故不加分号。
    xi=a+i*h
    xx=[xx,xi];
    y=y+h*f(xi,y)
    %将y追加到向量yy
    yy=[yy,y];
end
%函数结束





