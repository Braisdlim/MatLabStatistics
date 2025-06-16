% Define the likelihood function
likelihood = @(theta) -sum(log(normpdf(data, theta, std_data)));

% Initial guess for theta
theta_initial = mean(data);

% Maximum likelihood estimation
theta_mle = fminsearch(likelihood, theta_initial);

% Display result
fprintf('Maximum Likelihood Estimate for Mean: %.2f\n', theta_mle);
