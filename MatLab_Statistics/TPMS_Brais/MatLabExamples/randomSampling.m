% Complete blood glucose data of 100 patients
complete_data = randi([80, 120], 1, 100);

% Select a random sample of 10 patients
sample_size = 10;
sample_indices = randperm(length(complete_data), sample_size);
sample_data = complete_data(sample_indices);

% Display selected sample
disp('Blood glucose sample (mg/dL):');
disp(sample_data);
