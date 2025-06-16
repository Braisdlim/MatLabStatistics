% Blood glucose data divided into age groups (strata)
young_group = randi([80, 100], 1, 50);  % Young patients
middle_group = randi([85, 110], 1, 30);  % Middle-aged patients
elderly_group = randi([90, 120], 1, 20);  % Elderly patients

% Select samples from each group
sample_size_young = 5;
sample_size_middle = 3;
sample_size_elderly = 2;

sample_young = young_group(randperm(length(young_group), sample_size_young));
sample_middle = middle_group(randperm(length(middle_group), sample_size_middle));
sample_elderly = elderly_group(randperm(length(elderly_group), sample_size_elderly));

% Combine samples from each group
stratified_sample = [sample_young, sample_middle, sample_elderly];

% Display stratified sample
disp('Stratified blood glucose sample (mg/dL):');
disp(stratified_sample);
