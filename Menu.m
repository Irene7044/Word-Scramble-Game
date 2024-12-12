% This script displays a messgae dialogue with options to read the rules,
% play the game, or quit the program. Along with their repective
% responses to each options. This incoporates the difficultyMenu code.

% PromptUserName Code:
userName = input('Enter your name: ',"s");
introMessage = questdlg(sprintf('Hello %s! Welcome to Word Scramble', userName), 'Welcome Menu','Rules','Play','Quit','Quit');

% ------------------------------------------------------------------------

% Menu Code: 

% Set difficulty options 
difficultyOptions = {'Easy', 'Hard', 'Difficult'};

% Response to each options using conditional statement
switch introMessage 

    % Display the rules
    case 'Rules'
        rules = questdlg(["Game Rules:";"1. Select a topic";"2. Select the difficulty";"3. Guess the unscrambled word";"4. You only have 3 attempts for each word"; "Good luck and have fun :D"],'Rules Menu','Play','Play');

        if strcmp(rules, 'Play')
            difficulty = listdlg('ListString', difficultyOptions, 'SelectionMode', 'single', 'PromptString', 'Select The Difficulty Level:');
        end 

    % Displays the difficulty selection menu 
    case 'Play'
        difficulty = listdlg('ListString', difficultyOptions, 'SelectionMode', 'single', 'PromptString', 'Select The Difficulty Level:');
    
    % Terminate the program
    case 'Quit'
        return;
end 










  