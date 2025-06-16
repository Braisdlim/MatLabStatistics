% Successive Approximation Method to find the square root of a number

% Step 1: Define the function g(x)
A = 25; % Number for which we want to find the square root
g = @(x) 0.5 * (x + A/x);

% Step 2: Initial parameters
x0 = 5; % Assume an initial value, it could be any positive number

tol = 1e-6; % Tolerance, convergence criterion
max_iter = 100; % Maximum number of iterations

% Step 3: Implementation of the Successive Approximation Method
x = x0;

for i = 1:max_iter
    x_next = g(x);
    
    % Check for convergence
    if abs(x_next - x) < tol
        break; % Convergence achieved
    end
    
    x = x_next;
end

% Step 4: Results Visualization
fprintf('Approximation of the square root of %d: %f\n', A, x_next);
