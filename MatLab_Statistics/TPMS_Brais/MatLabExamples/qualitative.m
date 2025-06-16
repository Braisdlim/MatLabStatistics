% Patient satisfaction data
satisfaction = {'satisfied', 'very satisfied', 'neutral', 'dissatisfied', 'satisfied', 'neutral', 'very satisfied', 'satisfied', 'neutral', 'very satisfied'};
categories = unique(satisfaction);
freq = histc(satisfaction, categories);

% Display frequencies
for i = 1:length(categories)
    fprintf('Frequency of %s: %d\n', categories{i}, freq(i));
end
