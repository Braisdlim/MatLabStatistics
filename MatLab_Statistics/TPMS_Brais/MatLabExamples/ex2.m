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

% Confidence interval
CI_lower = mean_data - tinv(1 - alpha/2, n-1) * SE;
CI_upper = mean_data + tinv(1 - alpha/2, n-1) * SE;

% Results
fprintf('95%% Confidence Interval: [%.2f, %.2f]\n', CI_lower, CI_upper);

% Null hypothesis: mu = 7
mu_0 = 7;

% Calculate t-statistic
t_stat = (mean_data - mu_0) / (std_data / sqrt(n));

% Degrees of freedom
df = n - 1;

% Calculate p-value
p_value = 2 * (1 - tcdf(abs(t_stat), df));

% Display results
fprintf('t-statistic: %.2f\n', t_stat);
fprintf('p-value: %.4f\n', p_value);

% Decision based on significance level
alpha = 0.05;
if p_value < alpha
    fprintf('Reject the null hypothesis at %.2f significance level\n', alpha);
else
    fprintf('Fail to reject the null hypothesis at %.2f significance level\n', alpha);
end
