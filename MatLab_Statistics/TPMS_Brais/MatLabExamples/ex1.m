% Sample data
data = [5, 7, 8, 6, 9, 10, 7, 8, 7, 9];

% Calculate mean and standard deviation
mean_data = mean(data);
std_data = std(data);

% Confidence level
confidence_level = 0.95;
alpha = 1 - confidence_level;

% Sample size
n = length(data);

% Standard error
SE = std_data / sqrt(n);

% Degrees of freedom
df = n - 1;

% Get t-critical value from Student's t-distribution table or function
% For example, for 95% confidence and df degrees of freedom
t_critical = 2.262; % This value is from the t-distribution table

% Calculate confidence interval
CI_lower = mean_data - t_critical * SE;
CI_upper = mean_data + t_critical * SE;

% Results
fprintf('95%% Confidence Interval: [%.2f, %.2f]\n', CI_lower, CI_upper);
