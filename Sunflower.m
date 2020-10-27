l = 1;
s = 0.01;
r = sunflower(l, s);
points = [real(r), imag(r), zeros(l/s)];
scatter(real(r),imag(r));
offs = 1.2;
axis([-offs, offs, -offs, offs])
grid


function [r] = sunflower(l, s)
%     r = zeros(l / s);
    r = [];
    PHI = 137.5077640500378546463487;
    phi = 0;
    for a=0:s:l
        phi=phi + PHI;
        r(end + 1) = a * exp(1j * phi);
    end
end

% Data:
% l = 1; s = 0.001
% => a = 1000 points
% => max(phi) = 1000 * phi = 1000 * 137.507764 = 137507.763 deg
% => 381.97 turns
% => dl = 381.96 / 1000 = 
% 

% l = 1; s = 0.01
% => a = 100 points
% => max(phi) = 100 * phi = 100 * 137.507764 = 13750.7763 deg
% => 38.197 turns
% => dl = 10 mm / 38.197 = 0,262

