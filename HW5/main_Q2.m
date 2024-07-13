clc
clear
close all

U = [6, 8, 5;
     5, 6, 8;
     11, 2, 6];
 
V = U-2;
 
p1 = 1/3;
p2 = 1/3;
p3 = 1/3;

% Jacobian and eigenvalues for U
format rat
J_u = double(eval(jac_cal(U)))
format short
abs(eig(J_u))
 
% Jacobian and eigenvalues for V
format rat
J_v = double(eval(jac_cal(V)))
format short
abs(eig(J_v))

n = 2000;
P0 = [0.90, 0.05, 0.05]';
P = RD_cal(n, U, P0);

figure
t = 1:1:n;
plot(t,P(1,:),t,P(2,:), t, P(3,:))
title('RD for U');
xlabel('Repetition of the Games');
ylabel('Nash Solutions');
legend('P_1','P_2', 'P_3')

n = 2000;
P0 = [0.40, 0.30, 0.30]';
P = RD_cal(n, V, P0);

figure
t = 1:1:n;
plot(t,P(1,:),t,P(2,:), t, P(3,:))
title('RD for V');
xlabel('Repetition of  the Games');
ylabel('Nash Solutions');
legend('P_1','P_2', 'P_3')
 