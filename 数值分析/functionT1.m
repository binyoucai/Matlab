%定义复合梯形函数functionT1,传入参数f为被积函数,a、b为积分上下限，n为区间分割量
%函数开始
function [ T ] = functionT1( f,a,b,n )
%h的表达式
h=(b-a)/n;
%复合梯形公式累加部分开始
E=0;
for k=1:(n-1)
    xk=a+k*h;
    E=E+f(xk);
end
%复合梯形公式累加部分结束
%复合梯形总算法公式
T=h/2*(f(a)+2*E+f(b));
%函数结束
end
