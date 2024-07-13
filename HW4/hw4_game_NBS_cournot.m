% Define the variables
x = sdpvar;
y = sdpvar;

% Define the objective function
objective = -(96*x - 4*x^2 - x^3 - 8*x*y - 134) * (80*y - 4*y^2 - y^3 - 8*x*y - 62);

% Define the constraints
constraints = [x >= 0, y >= 0, 96*x - 4*x^2 - x^3 - 8*x*y - 134 >= 0, 80*y - 4*y^2 - y^3 - 8*x*y - 64 >= 0];

% Define the options for the solver
options = sdpsettings('solver', 'fmincon');

% Solve the optimization problem
optimize(constraints, objective, options);

% Display the solution
if value(objective) > -Inf
    disp('Optimization successful!');
    disp(['x = ' num2str(value(x))]);
    disp(['y = ' num2str(value(y))]);
    disp(['Optimal objective value = ' num2str(-value(objective))]);
else
    disp('Optimization failed');
end