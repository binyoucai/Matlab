t=0:0.01:2*pi;
x=20*sin(t);y=20*cos(t);
t1=-pi/2:0.01:pi/2;
x1=9+5*sin(t1);y1=1+5*cos(t1);
x2=-9+5*sin(t1);t2=pi/2:0.01:3*pi/2;
x3=6*sin(t2);y2=-10+5*cos(t2);
plot(x,y,'k:',x1,y1,'k.',x2,y1,'y.',x3,y2,'r.')
title('我是笑脸');
axis equal
