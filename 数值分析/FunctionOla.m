%����ŷ��������FunctionOla,�������fΪ΢���ֺ���,y0Ϊ��ʼֵ��a��b�ֱ�������������
%����ֵ,yyΪ���н����������
%������ʼ
function [yy,xx] = FunctionOla( f,y0,a,b,n)
y=y0;
h=(b-a)/n;
%����һ�����������洢ÿ�ε�yֵ
yy=[];
xx=[];
for i=0:n-1
    %����Ϊ��ʵ�����۲죬�ʲ��ӷֺš�
    xi=a+i*h
    xx=[xx,xi];
    y=y+h*f(xi,y)
    %��y׷�ӵ�����yy
    yy=[yy,y];
end
%��������





