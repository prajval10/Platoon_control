function val = find_roots(Tx,Ty,x_0,y_0)
% syms a_1;syms a_2;syms a_3;syms a_4;syms a_5;syms a_0;
% syms b_1;syms b_2;syms b_3;syms b_4;syms b_5;syms b_0;
% syms t;
% syms x; syms y;
% x   = a5*t^5 + a4*t^4 + a3*t^3 + a2*t^2 + a1*t^1 + a0;
% y   = b5*t^5 + b4*t^4 + b3*t^3 + b2*t^2 + b1*t^1 + b0;
% x_d = diff(x,t);
% x*x_d
% syms x_0; syms y_0;
% d = (x-x_0)^2 + (y-y_0)^2;
% func = (1/2)*diff(d,t)
a_5 = Tx(1) ; b_5 = Ty(1);
a_4 = Tx(2) ; b_4 = Ty(2);
a_3 = Tx(3) ; b_3 = Ty(3);
a_2 = Tx(4) ; b_2 = Ty(4);
a_1 = Tx(5) ; b_1 = Ty(5);
a_0 = Tx(6) ; b_0 = Ty(6);
inter_mat_a =...
[5*a_5*a_5;                                                        %9
 4*a_4*a_5 + 5*a_5*a_4;                                            %8
 3*a_3*a_5 + 4*a_4*a_4 + 5*a_5*a_3;                                %7
 2*a_2*a_5 + 3*a_3*a_4 + 4*a_4*a_3 + 5*a_5*a_2;                    %6
 1*a_1*a_5 + 2*a_2*a_4 + 3*a_3*a_3 + 4*a_4*a_2 + 5*a_1*a_5;        %5
 1*a_1*a_4 + 2*a_2*a_3 + 3*a_3*a_2 + 4*a_1*a_4 + 5*a_5*(a_0-x_0) ; %4
 1*a_1*a_3 + 2*a_2*a_2 + 3*a_1*a_3 + 4*a_4*(a_0-x_0);              %3       
 1*a_1*a_2 + 2*a_1*a_2 + 3*a_3*(a_0-x_0);                          %2
 1*a_1*a_1 + 2*a_2*(a_0-x_0);
 1*a_1*(a_0-x_0)];


inter_mat_b =...
[5*b_5*b_5;                                                        %9
 4*b_4*b_5 + 5*b_5*b_4;                                            %8
 3*b_3*b_5 + 4*b_4*b_4 + 5*b_5*b_3;                                %7
 2*b_2*b_5 + 3*b_3*b_4 + 4*b_4*b_3 + 5*b_5*b_2;                    %6
 1*b_1*b_5 + 2*b_2*b_4 + 3*b_3*b_3 + 4*b_4*b_2 + 5*b_1*b_5;        %5
 1*b_1*b_4 + 2*b_2*b_3 + 3*b_3*b_2 + 4*b_1*b_4 + 5*b_5*(b_0-y_0) ; %4
 1*b_1*b_3 + 2*b_2*b_2 + 3*b_1*b_3 + 4*b_4*(b_0-y_0);              %3       
 1*b_1*b_2 + 2*b_1*b_2 + 3*b_3*(b_0-y_0);                          %2
 1*b_1*b_1 + 2*b_2*(b_0-y_0);
 1*b_1*(b_0-y_0)];

coeff = inter_mat_a+inter_mat_b;
val = roots(coeff');
end
 