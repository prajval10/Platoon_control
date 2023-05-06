function result = point_character(pos_x,pos_y, guess)
    flag = 0;
    % pos_x is x_coordinate of the vehicle (from localization)
    % pos_y is y_coordinate of the vehicle (from localization)
    % guess is the window number from where we need to start looking for
    % closest point
    global knot_size;
    global x; global y;
    global order; global M;
    global mylength;
for iter = guess:knot_size
    P1 = x(iter:iter+(order-1));
    P2 = y(iter:iter+(order-1));
    P  = [P1' P2'];
    Tx = M*P1';
    Ty = M*P2';
    val = find_roots(Tx,Ty,pos_x,pos_y);
    validity = roots_valid(val);
    if ( validity~=0 )
        break;
    end
    
end

f  = @(ti) sqrt( ( 5*Tx(1)*ti.^4 + 4*Tx(2)*ti.^3 + 3*Tx(3)*ti.^2 + 2*Tx(4)*ti +  1*Tx(5) +  0*Tx(6) ).^2 + ...
                     ( 5*Ty(1)*ti.^4 + 4*Ty(2)*ti.^3 + 3*Ty(3)*ti.^2 + 2*Ty(4)*ti +  1*Ty(5) +  0*Ty(6) ).^2 );
                 
if (validity~=0)                 
    u = val(validity);
else
    u = 1;
    flag = 1;
    %set_param(gcs, 'SimulationCommand', 'stop');
end
if (iter == 1)
   close_point = integral(f, 0, u);
else
    close_point = mylength(iter-1) + integral(f, 0, u);
end

deriv       = [5*u^4   4*u^3 3*u^2 2*u   1  0]*M*P;
doub_deriv  = [20*u^3 12*u^2 6*u   2      0  0]*M*P;

curvature = abs(myCurvature(deriv,doub_deriv));

g2 = u+0.002;
g1 = u-0.002;

test_point_1 = mylength(iter-1) + integral(f, 0, g1);
test_point_2 = mylength(iter-1) + integral(f, 0, g2);

% check_it = [test_point_1 close_point test_point_2];
% another_check = test_point_2-test_point_1
deriv_1       = [5*g1^4   4*g1^3 3*g1^2 2*g1   1  0]*M*P;
doub_deriv_1  = [20*g1^3 12*g1^2 6*g1   2      0  0]*M*P;

deriv_2       = [5*g2^4   4*g2^3 3*g2^2 2*g2   1  0]*M*P;
doub_deriv_2  = [20*g2^3 12*g2^2 6*g2   2      0  0]*M*P;

curvat_1 = myCurvature(deriv_1,doub_deriv_1);
curvat_2 = myCurvature(deriv_2,doub_deriv_2);


deriv_curvature = (curvat_2-curvat_1)/(test_point_2 - test_point_1);
new_guess = iter;

foot_P            = [u^5      u^4    u^3   u^2 u 1]*M*P;
lateral_deviation = norm(foot_P - [pos_x pos_y]);
sin_theta = deriv(2); cos_theta = deriv(1); % ratios not true theta
theta_des         = atan2(sin_theta,cos_theta);
%theta_des         = atan(deriv(2)/deriv(1));
result = [curvature, deriv_curvature, lateral_deviation, theta_des, new_guess, close_point, flag];
end