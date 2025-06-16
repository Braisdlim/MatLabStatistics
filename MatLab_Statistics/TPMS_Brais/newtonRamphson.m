% Newton-Raphson Method to find the root of f(x) = x^2 - 4

% Step 1: Define the function and its derivative
f = @(x) x^2 - 4;
df = @(x) 2*x;

% Step 2: Choose an initial point close to the root
x0 = 3;

% Step 3: Define the tolerance and maximum number of iterations
tol = 1e-6;
max_iter = 100;

% Step 4: Implementation of the Newton-Raphson Method
for i = 1:max_iter
    % Calculate the next approximation using the Newton-Raphson formula
    x1 = x0 - f(x0) / df(x0);
    
    % Check if a solution is found
    if abs(x1 - x0) < tol
        break; % Solution found
    end
    
    % Update the point for the next iteration
    x0 = x1;
end

% Step 5: Visualize the results
fprintf('Approximation of the root: %f\n', x1);
fprintf('Number of iterations: %d\n', i);
