[x,y]=meshgrid(0:0.25:4*pi); %在[0,4pi]×[0,4pi]区域生成网格坐标
    z=sin(x+sin(y))-x/10;
    mesh(x,y,z);
    axis([0 4*pi 0 4*pi -2.5 1]);
