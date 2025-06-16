% Secant Method to find a root of f(x) = x^3 - 6x^2 + 11x - 6

% Step 1: Define the function
f = @(x) x^3 - 6*x^2 + 11*x - 6;

% Step 2: Choose two initial points close to the root
x0 = 0.5;
x1 = 2;

% Step 3: Define the tolerance and maximum number of iterations
tol = 1e-6;
max_iter = 100;

% Step 4: Implementation of the Secant Method
for i = 1:max_iter
    % Calculate the slope of the secant
    slope = (f(x1) - f(x0)) / (x1 - x0);
    
    % Find the intersection with the x-axis
    x2 = x1 - f(x1) / slope;
    
    % Check if a solution is found
    if abs(f(x2)) < tol
        break; % Solution found
    end
    
    % Update points for the next iteration
    x0 = x1;
    x1 = x2;
end

% Step 5: Visualize the results
fprintf('Approximation of the root: %f\n', x2);
fprintf('Number of iterations: %d\n', i);

