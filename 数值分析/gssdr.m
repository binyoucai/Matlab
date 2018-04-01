%定义gssdr高斯-塞德尔迭代函数,A为系数矩阵,b为常数矩阵,x0为初始向量，e为误差值
%返回值x为方程组的近似解，k为迭代次数
%函数开始
function [ x,k ] = gssdr( A,b,x0,e )
D=diag(diag(A));%初始化矩阵A对角矩阵为D
L=-tril(A,-1);%初始化矩阵A的下三角矩阵为L
U=-triu(A,1);%初始化矩阵A的上三角矩阵为U
B=inv(D-L)*U;
f=inv(D-L)*b;
x=B*x0+f;
%初始化k
k=1;
%高斯-塞德尔迭代算法开始
while norm(x-x0,inf)>=e
    x0=x;
    x=B*x+f;
    k=k+1;
end
%高斯-塞德尔迭代算法结束
end
%函数结束
