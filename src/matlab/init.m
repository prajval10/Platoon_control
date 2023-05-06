
clear all;close all;clc
    global knot_size;
    global x; global y;
    global order; global M;
    global mylength;
% load circle
 load traj;
%load init_adam;
%load line
x = x';
y = y';
order = 6;
knot_size = length(x) - (order-1);
M = basisMatrix(order);

% Arc Length computation (for curvilinear abscissa)

s = [];
for iter = 1:knot_size
    P1 = x(iter:iter+(order-1));
    P2 = y(iter:iter+(order-1));
    P  = [P1' P2'];
    Tx = M*P1';
    Ty = M*P2';
    % The below function handler is basically the norm of
    % tangent vector
    f  = @(ti) sqrt( ( 5*Tx(1)*ti.^4 + 4*Tx(2)*ti.^3 + 3*Tx(3)*ti.^2 + 2*Tx(4)*ti +  1*Tx(5) +  0*Tx(6) ).^2 + ...
                     ( 5*Ty(1)*ti.^4 + 4*Ty(2)*ti.^3 + 3*Ty(3)*ti.^2 + 2*Ty(4)*ti +  1*Ty(5) +  0*Ty(6) ).^2 );
    
    % Arc length is the integral of the above function from 0 to 1             
    arc = integral(f, 0, 1);
    s = [s arc];
end
mylength = cumsum(s);
    
  