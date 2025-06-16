% Bisection Method to find the root of f(x) = x^2 - 4

% Step 1: Define the function
f = @(x) x^2 - 4;

% Step 2: Choose an initial interval [a, b] where f(a) * f(b) < 0
a = 0;
b = 3;

% Step 3: Define the tolerance and maximum number of iterations
tol = 1e-6;
max_iter = 100;

% Step 4: Implementation of the Bisection Method
for i = 1:max_iter
    % Calculate the midpoint
    c = (a + b) / 2;
    
    % Evaluate the function at the midpoint
    fc = f(c);
    
    % Check if a solution is found
    if abs(fc) < tol
        break; % Solution found
    end
    
    % Update the interval [a, b]
    if f(a) * fc < 0
        b = c;
    else
        a = c;
    end
end

% Step 5: Visualize the results
fprintf('Approximation of the root: %f\n', c);
fprintf('Number of iterations: %d\n', i);
