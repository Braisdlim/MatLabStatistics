% Data for 10 patients
glucose_levels = [90, 85, 100, 92, 88, 95, 105, 99, 102, 97];

% Calculate sample mean and standard deviation
n = length(glucose_levels);
sample_mean = mean(glucose_levels);
sample_std = std(glucose_levels);

% Construct a 95% confidence interval for the mean
alpha = 0.05;
t_value = tinv(1 - alpha/2, n-1);
margin_of_error = t_value * (sample_std / sqrt(n));
ci_lower = sample_mean - margin_of_error;
ci_upper = sample_mean + margin_of_error;

fprintf('Sample mean of blood glucose: %.2f mg/dL\n', sample_mean);
fprintf('95%% confidence interval for the mean: [%.2f, %.2f] mg/dL\n', ci_lower, ci_upper);
