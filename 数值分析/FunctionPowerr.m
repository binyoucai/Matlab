%���巴�ݷ�����FunctionPowerr,�������A����,v0Ϊ��ʼ������eΪ�����
%����ֵ,maxvkΪ����Ľ�������ֵ��ukΪ�淶��������KΪ��������
%������ʼ
function [maxvk,uk,k] = FunctionPowerr( A,v0,e)
%����v1
A_ni=inv(A);
v1=A_ni*v0;
miu1=norm(v1,inf);
%����u1
u1=v1/miu1;
%����v2
v2=A_ni*u1;
miu2=norm(v2,inf);
%����u2
u2=v2/miu2;
%ǰ���Ѿ�����2�Σ��ʳ�ʼ��K��ֵ=2
k=2;
while abs(miu1-miu2)>e
 v1=v2;
 u1=u2;
 miu1=miu2;
 v2=A_ni*u1;
 miu2=norm(v2,inf);
 %���������ۼ�
 k=k+1;
 u2=v2/miu2;
 %���ڹ۲��ն���ʾK��maxvk,uk
 k
 maxvk=1/miu2
 uk=u2
end
 
end



