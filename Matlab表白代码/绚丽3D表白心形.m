 [x,y,z]=meshgrid(linspace(-1.5,1.5));
val=(x.^2+(9/4)*y.^2+z.^2-1).^3-x.^2.*z.^3-(9/80)*y.^2.*z.^3;
[f,v]=isosurface(x,y,z,val,0);
p=patch('Faces',f,'Vertices',v,'CData',v(:,3),'FaceColor','w','EdgeColor','flat');
isonormals(x,y,z,val,p);
view(3)
grid on
axis equal

title('愿得一人心白首不相离');
legend('北冥神君，2016.8.1');
