%定义牛顿插值函数Newton_in,传入参数x,和y分别对应插值节点和差值节点处的函数值，xi为插值，可以是一个，也可以是多个，多个用行向量表示
%返回值,yis为xi出的函数估计值,
%函数开始
function yis=Newton_in(x,y,xi)
%取迭代次数n
n=length(x);
%取插值的个数m。便于多次插值。
m=length(xi);
%根据插商表的规律开始计算插商Y
%初始化Y为一个零矩阵
Y=zeros(n);
Y(:,1)=y';
%初始化yis为一个空矩阵。
yis=[];
for k=1:n-1
    for i=1:n-k
        Y(i,k+1)=(Y(i+1,k)-Y(i,k))/(x(i+k)-x(i));
    end
end
%计算牛顿插值公式
for q=1:m
  %取i次插值xi，以便于多次插值。
    z=xi(q);
    yi=0;
    for i=1:n
      %连乘号部分开始,先初始化z
        z=1;
        for k=1:i-1
            z=z*(xi(q)-x(k));
        end
    yi=yi+Y(1,i)*z;
    end
    %把次插值的结果存入yis,便于画图
    yis = [yis,yi];
end
%函数结束


