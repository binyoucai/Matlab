%定义chaosc超松驰尔迭代函数,A为系数矩阵,b为常数矩阵,x0为初始向量，w为超松驰因子(0<w<2)，e为误差值
%返回值x为方程组的近似解，k为迭代次数
%函数开始
function [ x,k ] = chaosc( A,b,x0,w,e )
D=diag(diag(A));%初始化矩阵A对角矩阵为D
L=-tril(A,-1);%初始化矩阵A的下三角矩阵为L
U=-triu(A,1);%初始化矩阵A的上三角矩阵为U
Lw=inv(D-w*L)*((1-w)*D+w*U);
f=w*inv(D-w*L)*b;
x=Lw*x0+f;
%初始化k
k=1;
%超松驰迭代算法开始
while norm(x-x0)>=e
    x0=x;
    x=Lw*x0+f;
    k=k+1;
end
%超松驰迭代算法结束
end
%函数结束
 

