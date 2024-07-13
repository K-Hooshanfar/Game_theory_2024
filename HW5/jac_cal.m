function J = jac_cal(A)
 syms p1 p2 p3 dp1 dp2 dp3
 P = [p1;p2;p3];
 dp1 = p1*([1 0 0]*A*P ./ ([p1 p2 p3]*A*P));
 dp2 = p2*([0 1 0]*A*P ./ ([p1 p2 p3]*A*P));
 dp3 = p3*([0 0 1]*A*P ./ ([p1 p2 p3]*A*P));
 
 
 P_dot = cat(1, dp1, dp2, dp3);
 J = jacobian(P_dot, [p1 p2 p3]);
end