clc; clear all; close all;
const = 0;
x = -5 : 0.05 : 5;
y = -5 : 0.05 : 5;
z = -5 : 0.05 : 5;
[x, y, z] = meshgrid(x, y, z);
% 生成网格数据
f=(x.^2 + (9/4)*y.^2 + z.^2 - 1).^3 - x.^2.*z.^3 - (9/80)*y.^2.*z.^3 - const;
p=patch(isosurface(x,y,z,f,0));
set(p, 'FaceColor', 'red', 'EdgeColor', 'none');
daspect([1 1 1])
view(3)
camlight; lighting phong
axis equal; box on;
xlabel('x'); ylabel('y'); zlabel('z');
hold on;
axis off;
set(gcf, 'color', 'g', 'units', 'normalized', 'position', [0.1 0.1 0.35 0.3])
p1 = [0, -1.2, -0.3];
p2 = [0, 0.7, 1.0];
vec = 2*(p2 - p1);
h = quiver3(p1(1), p1(2), p1(3), ...
    vec(1), vec(2), vec(3), 0.6, ...
    'r-', 'filled');
set(h, 'LineWidth', 3);
xd = get(h, 'XData');
yd = get(h, 'YData');
zd = get(h, 'ZData');
vec = vec/norm(vec);
set(h, 'XData', xd-vec(1)*3, ...
    'YData', yd-vec(2)*3, ...
    'ZData', zd-vec(3)*3);
ve = get(p, 'vertices');
text(p1(1), p1(2), p1(3)-1, '北冥神君', 'FontSize', 20, 'Color', 'r');
for i = 1 : 122
    set(h, 'XData', xd+vec(1)*(i-300)*0.01, ...
        'YData', yd+vec(2)*(i-300)*0.01, ...
        'ZData', zd+vec(3)*(i-300)*0.01);
    if rem(i, 3) == 1
        set(p, 'vertices', ve*1.1);
        title('Say Love To ME!', 'FontSize', 15, 'Color', 'm')
    else
        set(p, 'vertices', ve);
        title('Say Love To ME!', 'FontSize', 15, 'Color', 'b')
    end
    pause(0.01);
end
for i = 240 : 300
    set(h, 'XData', xd+vec(1)*(i-300)*0.01, ...
        'YData', yd+vec(2)*(i-300)*0.01, ...
        'ZData', zd+vec(3)*(i-300)*0.01);
    if rem(i, 3) == 1
        set(p, 'vertices', ve*1.1);
        title('Say Love To ME!', 'FontSize', 15, 'Color', 'm')
    else
        set(p, 'vertices', ve);
        title('Say Love To ME!', 'FontSize', 15, 'Color', 'b')
    end
    pause(0.01);
end
title('Say Love To ME!', 'FontSize', 15, 'Color', 'm')
