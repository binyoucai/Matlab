%定义反幂法函数FunctionPowerr,传入参数A矩阵,v0为初始向量，e为误差数
%返回值,maxvk为矩阵的近似特征值，uk为规范化向量，K为迭代次数
%函数开始
function [maxvk,uk,k] = FunctionPowerr( A,v0,e)
%计算v1
A_ni=inv(A);
v1=A_ni*v0;
miu1=norm(v1,inf);
%计算u1
u1=v1/miu1;
%计算v2
v2=A_ni*u1;
miu2=norm(v2,inf);
%计算u2
u2=v2/miu2;
%前面已经迭代2次，故初始化K的值=2
k=2;
while abs(miu1-miu2)>e
 v1=v2;
 u1=u2;
 miu1=miu2;
 v2=A_ni*u1;
 miu2=norm(v2,inf);
 %迭代次数累加
 k=k+1;
 u2=v2/miu2;
 %便于观察终端显示K，maxvk,uk
 k
 maxvk=1/miu2
 uk=u2
end
 
end



