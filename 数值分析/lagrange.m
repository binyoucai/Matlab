%定义拉格朗日插值函数langrange,传入参数xi,和yi分别对应函数区间和函数，x为插值可以一个，或者多个，多个用向量表示。
%返回值,y是每次插值x返回的对应的值。多个返回多个，以向量的形式返回。
%函数开始
function [yy]=lagrange(xi,yi,x)
%取向量xi的个数
n=length(xi);
%取向量x的个数,目的是计算多次插值
m=length(x);
%插值累加算法开始
yy=[];
for i=1:m
  %取i次插值xi，以便于多次插值。
  z=x(i);
  %定义并初始化s
  s=0;
  for k=1:n
      %连乘号部分开始,先初始化ji
      ji=1.0;
      for j=1:n
           %注意判断j是否等于k,如果不相等则进入循环,相等的则不进入连乘，
           %如果j=k,那么ji始终等于0
          if j~=k
             %连乘号公式部分
            ji=ji*(x(i)-xi(j))/(xi(k)-xi(j));
          end
      end
      s=ji*yi(k)+s;
  end
   %二层循环结束后把插值得到的结果追加到向量yy
    yy=[yy,s];
end
%插值累加算法结束
end
%函数结束