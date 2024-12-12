% This script displays a list dialogue of options: animals, food, and
% general as the game's word topics

% Set topics options 
topicsOptions = {'General', 'Food', 'Animals'};

% Display the list dialogue 
topics = listdlg('ListString', topicsOptions, 'SelectionMode', 'single', 'PromptString', 'Select Topic:');

% Check if the right topic is selected and stored 
disp(topics);