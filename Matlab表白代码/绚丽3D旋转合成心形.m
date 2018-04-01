clear
filename='heart';
[x,y,z]=meshgrid(linspace(-3,3)); 
p=(x.^2+(9/4)*y.^2+z.^2-1).^3-x.^2.*z.^3-(9/80)*y.^2.*z.^3; 
[faces,verts,colors] = isosurface(x,y,z,p,0,x);
for i=1:9
figure(i)
pp=patch('Faces',faces(1:284+i*1000,:),'Vertices',verts);
set(pp,'FaceColor','red','EdgeColor','none');
view(-30,24)
axis off
axis equal
axis tight
camlight
lighting gouraud
pause(0.5)
f(i) = getframe(i);
imind = frame2im(f(i));
[imind,cm] = rgb2ind(imind,256);
if i == 1
 
        imwrite(imind,cm,filename,'gif', 'Loopcount',inf,'DelayTime',0.5);
 
else
 
        imwrite(imind,cm,filename,'gif','WriteMode','append','DelayTime',0.5);
 
end
close(i)
end
