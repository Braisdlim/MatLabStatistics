% Blood glucose data (mg/dL)
glucose_levels = [90, 85, 100, 92, 88, 95, 105, 99, 102, 97];

% Calculate descriptive statistics
mean_glucose = mean(glucose_levels);
median_glucose = median(glucose_levels);
std_glucose = std(glucose_levels);

% Display results
fprintf('Mean blood glucose: %.2f mg/dL\n', mean_glucose);
fprintf('Median blood glucose: %.2f mg/dL\n', median_glucose);
fprintf('Standard deviation of blood glucose: %.2f mg/dL\n', std_glucose);
