[x,t] = meshgrid((0:24)/24,(0:575)/575*17*pi-2*pi);
p     = (pi/2)*exp(-t/8/pi);
u     = 1-(1-mod(3.6*t,2*pi)/pi).^4/2;
y     = 2*(x.*(x-1)).^2.*sin(p);
r     = u.*(x.*sin(p)+y.*cos(p));
z     = u.*(x.*cos(p)-y.*sin(p));
y     = r.*sin(t);
x     = r.*cos(t);
figure('Color','k') 
surface(x,y,z,'EdgeColor','none','FaceColor','r')
view(-22,66),axis equal off
light('pos',[-0.25 -0.25 1], 'style','local', 'color',[1 0.84 0.6])
lighting gouraud
