l = 1;
s = 0.001;
r = sunflower(l, s);
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