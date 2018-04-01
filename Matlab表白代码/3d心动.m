f=@(x,y,z) x.^2.*z.^3+9*y.^2.*z.^3/80-(x.^2+9*y.^2/4+z.^2-1).^3;%心形曲面函数
[x,y,z]=meshgrid(-1.5:0.1:1.5);%画图范围
v=f(x,y,z);
%画图
h=patch(isosurface(x,y,z,v,0));
isonormals(x,y,z,v,h)
set(h,'FaceColor','r','EdgeColor','none');
title('Programmed By beimingshenjun')
alpha(0.6)   
grid off;
axis([-1.5 1.5 -1.5 1.5 -1.5 1.5])
lighting Gouraud
h = camlight('left');
for i = 1:180;%水平旋转照相机
        camorbit(1,0)
        camlight(h,'left');
        drawnow;
End
