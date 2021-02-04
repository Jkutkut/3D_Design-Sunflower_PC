l = 1;
s = 0.01;
r = sunflower(l, s);
points = [real(r); imag(r); zeros(1, l/s)]';
scatter(real(r),imag(r));
offs = 0.2;
axis([l-offs, l+offs, l-offs, l+offs])
grid

save('myFile.txt', 'points', '-ASCII','-append');
function [r] = sunflower(l, s)
    N = l / s;
    r = zeros(1, N);
    PHI = 137.507764;
    A = 0:s:l;
    for a=1:N
        r(a) = A(a) * exp(1j * PHI * a);
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

