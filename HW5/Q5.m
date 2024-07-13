%% part1


% Payoff matrices for the players
A = [5, 0; 4, 2]; % Payoff matrix for Player 1
B = [2, 3; 4, 7]; % Payoff matrix for Player 2

% Number of strategies for each player
n1 = size(A, 1);
n2 = size(A, 2);

% Finding pure Nash equilibria
pureNashEquilibria = [];
for i = 1:n1
    for j = 1:n2
        % Check if (i, j) is a Nash equilibrium
        if all(A(i, j) >= A(:, j)) && all(B(i, j) >= B(i, :))
            pureNashEquilibria = [pureNashEquilibria; i, j];
        end
    end
end

disp('Pure Nash Equilibria:');
disp(pureNashEquilibria);

% Finding mixed Nash equilibria
% Solving the system of equations for the mixed strategies
syms p1 q1
% Probabilities of playing strategies
p2 = 1 - p1;
q2 = 1 - q1;

% Expected payoffs for each strategy
E_U1_1 = q1 * A(1,1) + q2 * A(1,2);
E_U1_2 = q1 * A(2,1) + q2 * A(2,2);
E_U2_1 = p1 * B(1,1) + p2 * B(2,1);
E_U2_2 = p1 * B(1,2) + p2 * B(2,2);

% Set up the equations for indifference
eq1 = E_U1_1 == E_U1_2;
eq2 = E_U2_1 == E_U2_2;

% Solve for the probabilities
solution = solve([eq1, eq2], [p1, q1]);

% Display the mixed Nash equilibrium
disp('Mixed Nash Equilibria:');
disp(solution);
%% part2
% Define the payoff matrices for the two players
A = [5, 0; 4, 2]; % Payoff matrix for Player 1
B = [2, 3; 4, 7]; % Payoff matrix for Player 2

% Initial observations: n1 and n2 represent the number of times each strategy has been played so far
n1 = [0, 2]; % Initial counts for Player 1's strategies
n2 = [2, 3]; % Initial counts for Player 2's strategies

% Number of iterations for fictitious play
num_iterations = 1000;

% Store the empirical frequencies of strategies
freq1 = n1 / sum(n1);
freq2 = n2 / sum(n2);

% Store the strategies played by each player
strategies1 = zeros(num_iterations, 1);
strategies2 = zeros(num_iterations, 1);

% Fictitious play iterations
for t = 1:num_iterations
    % Best response for Player 1 to Player 2's empirical frequencies
    [~, best_response1] = max(freq2 * A');
    
    % Best response for Player 2 to Player 1's empirical frequencies
    [~, best_response2] = max(freq1 * B);
    
    % Update counts
    n1(best_response1) = n1(best_response1) + 1;
    n2(best_response2) = n2(best_response2) + 1;
    
    % Update empirical frequencies
    freq1 = n1 / sum(n1);
    freq2 = n2 / sum(n2);
    
    % Store the strategies played
    strategies1(t) = best_response1;
    strategies2(t) = best_response2;
end

% Display the final empirical frequencies
disp('Final empirical frequencies for Player 1:');
disp(freq1);
disp('Final empirical frequencies for Player 2:');
disp(freq2);

% Plot strategy frequencies over time
figure;
subplot(2,1,1);
plot(1:num_iterations, cumsum(strategies1 == 1) ./ (1:num_iterations)', 'b', ...
     1:num_iterations, cumsum(strategies1 == 2) ./ (1:num_iterations)', 'r');
title('Player 1 Strategy Frequencies');
xlabel('Iteration');
ylabel('Frequency');
legend('Strategy 1', 'Strategy 2');

subplot(2,1,2);
plot(1:num_iterations, cumsum(strategies2 == 1) ./ (1:num_iterations)', 'b', ...
     1:num_iterations, cumsum(strategies2 == 2) ./ (1:num_iterations)', 'r');
title('Player 2 Strategy Frequencies');
xlabel('Iteration');
ylabel('Frequency');
legend('Strategy 1', 'Strategy 2');






%% part3

% Payoff matrices for the players
A = [5, 0; 4, 2]; % Payoff matrix for Player 1
B = [2, 3; 10, 7]; % Payoff matrix for Player 2

% Number of strategies for each player
n1 = size(A, 1);
n2 = size(A, 2);

% Finding pure Nash equilibria
pureNashEquilibria = [];
for i = 1:n1
    for j = 1:n2
        % Check if (i, j) is a Nash equilibrium
        if all(A(i, j) >= A(:, j)) && all(B(i, j) >= B(i, :))
            pureNashEquilibria = [pureNashEquilibria; i, j];
        end
    end
end

disp('Pure Nash Equilibria:');
disp(pureNashEquilibria);

% Finding mixed Nash equilibria
% Solving the system of equations for the mixed strategies
syms p1 q1
% Probabilities of playing strategies
p2 = 1 - p1;
q2 = 1 - q1;

% Expected payoffs for each strategy
E_U1_1 = q1 * A(1,1) + q2 * A(1,2);
E_U1_2 = q1 * A(2,1) + q2 * A(2,2);
E_U2_1 = p1 * B(1,1) + p2 * B(2,1);
E_U2_2 = p1 * B(1,2) + p2 * B(2,2);

% Set up the equations for indifference
eq1 = E_U1_1 == E_U1_2;
eq2 = E_U2_1 == E_U2_2;

% Solve for the probabilities
solution = solve([eq1, eq2], [p1, q1]);

% Display the mixed Nash equilibrium
disp('Mixed Nash Equilibria:');
disp(solution);

%% part4

% Define the payoff matrices for the two players
A = [5, 0; 4, 2]; % Payoff matrix for Player 1
B = [2, 3; 10, 7]; % Payoff matrix for Player 2

% Initial observations: n1 and n2 represent the number of times each strategy has been played so far
n1 = [0, 2]; % Initial counts for Player 1's strategies
n2 = [2, 3]; % Initial counts for Player 2's strategies

% Number of iterations for fictitious play
num_iterations = 1000;

% Store the empirical frequencies of strategies
freq1 = n1 / sum(n1);
freq2 = n2 / sum(n2);

% Store the strategies played by each player
strategies1 = zeros(num_iterations, 1);
strategies2 = zeros(num_iterations, 1);

% Fictitious play iterations
for t = 1:num_iterations
    % Best response for Player 1 to Player 2's empirical frequencies
    [~, best_response1] = max(freq2 * A');
    
    % Best response for Player 2 to Player 1's empirical frequencies
    [~, best_response2] = max(freq1 * B);
    
    % Update counts
    n1(best_response1) = n1(best_response1) + 1;
    n2(best_response2) = n2(best_response2) + 1;
    
    % Update empirical frequencies
    freq1 = n1 / sum(n1);
    freq2 = n2 / sum(n2);
    
    % Store the strategies played
    strategies1(t) = best_response1;
    strategies2(t) = best_response2;
end

% Display the final empirical frequencies
disp('Final empirical frequencies for Player 1:');
disp(freq1);
disp('Final empirical frequencies for Player 2:');
disp(freq2);

% Plot strategy frequencies over time

figure;
subplot(2,1,1);
plot(1:num_iterations, cumsum(strategies1 == 1) ./ (1:num_iterations)', 'b', ...
     1:num_iterations, cumsum(strategies1 == 2) ./ (1:num_iterations)', 'r');
title('Player 1 Strategy Frequencies');
xlabel('Iteration');
ylabel('Frequency');
legend('Strategy 1', 'Strategy 2');

subplot(2,1,2);
plot(1:num_iterations, cumsum(strategies2 == 1) ./ (1:num_iterations)', 'b', ...
     1:num_iterations, cumsum(strategies2 == 2) ./ (1:num_iterations)', 'r');
title('Player 2 Strategy Frequencies');
xlabel('Iteration');
ylabel('Frequency');
legend('Strategy 1', 'Strategy 2');


%plot(strategies1)
