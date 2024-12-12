% This script displays a list dialogue of options: Easy, hard, and
% difficult as the game's difficulty 

% Set difficulty options 
difficultyOptions = {'Easy', 'Hard', 'Difficult'};

% Display the list dialogue 
difficulty = listdlg('ListString', difficultyOptions, 'SelectionMode', 'single', 'PromptString', 'Select The Difficulty Level:');

% Check if the right difficulty is selected and stored 
disp(difficulty);