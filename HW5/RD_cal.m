function P = RD_cal(n, A, P0)

P = zeros(3,n);
P(:,1) = P0;
for i = 1:1:n-1
    
P(1, i+1) = P(1, i)*([1 0 0]*A*P(:, i) ./ (P(:, i)'*A*P(:, i)));
P(2, i+1) = P(2, i)*([0 1 0]*A*P(:, i) ./ (P(:, i)'*A*P(:, i)));
P(3, i+1) = P(3, i)*([0 0 1]*A*P(:, i) ./ (P(:, i)'*A*P(:, i)));
      
end
end