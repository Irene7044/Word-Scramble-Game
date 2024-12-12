% This script modifies the answerInputLoop code and allow the user to gain
% points and display their highscores 

% Test word to guess
randomString = 'cat';


% Insert promptUserName Code:
userName = input('Enter your name: ',"s");
introMessage = questdlg(sprintf('Hello %s! Welcome to Word Scramble', userName), 'Welcome Menu','Rules','Play','Quit','Quit');

% ------------------------------------------------------------------------

% Initialise highScore    
highScore = 0;

% Initialise gamePointRecord
gamePointRecord = [];

% Initialise keepPlaying
keepPlaying = true; 

% Loop to replay the game 
while keepPlaying 


    % Menu Code: 
    
    % Set difficulty options 
    difficultyOptions = {'Easy', 'Hard', 'Difficult'};
    
    
    % Response to each options using conditional statement
    switch introMessage 
    
        % Display the rules
        case 'Rules'
            rules = questdlg(["Game Rules:";" ";"1. Select a topic";"2. Select the difficulty";"3. Guess the unscrambled word";"4. You only have 3 attempts for each word";" "; "Good luck and have fun :D"],'Rules Menu','Play','Play');
    
            % Display difficulty selection menu when the user continues from
            % previous menu
    
            if strcmp(rules, 'Play')
                difficulty = listdlg('ListString', difficultyOptions, 'SelectionMode', 'single', 'PromptString', 'Select The Difficulty Level:');
                % Terminate code if user presses 'cancel'
                if isempty(difficulty)
                return;
                end 
            end 
    
        % Displays the difficulty selection menu 
        case 'Play'
            difficulty = listdlg('ListString', difficultyOptions, 'SelectionMode', 'single', 'PromptString', 'Select The Difficulty Level:');
            % Terminate code if user presses 'cancel'
            if isempty(difficulty)
            return;
            end 

        % Terminate the program
        case 'Quit'
            return;
    end 

% ------------------------------------------------------------------------
    % topicsMenu Code: 
    
    % Set topics options 
    topicsOptions = {'General', 'Food', 'Animals'};
    
    % Display the list dialogue 
    topics = listdlg('ListString', topicsOptions, 'SelectionMode', 'single', 'PromptString', 'Select Topic:');
    % Terminate code if user presses 'cancel'
    if isempty(topics)
        return;
    end

% ------------------------------------------------------------------------ 

    % Set to number of guesses to 3
    guessCount = 3;
    
    % Initialise game point 
    gamePoint = 0;
    
    % Loop for new scrambled word
    while guessCount ~= 0 

% ------------------------------------------------------------------------
        
        % Takes 3 guesses from the user and determine whether the guess is correct or incorrect
        
        % Set to number of guesses to 3
        guessCount = 3;
    
        % Loop for 3 guesses
        for i = 1:3 
            % Reduce guessCount by 1 after each loop / wrong guess 
            guessCount = guessCount - 1;
        
            % Initalise validGuess
            validGuess = false; 
        
            % Loop until guess is valid
            while validGuess == false
        
                % User input 
                guess = input("Please enter your guess: ", "s");
            
                % Check condition if the guess only consists of letters
                if ~ all(isletter(guess))
                    fprintf("Invalid guess. Please ensure your guess only consist of alphabetical letters. Please try again. \n")
                    continue; % continue while loop
                
                % Check condition if the guess length is shorter than the word 
                elseif strlength(guess) < strlength(randomString)
                    fprintf("Error. Your guess is too short. Please try again. \n");
                    continue; % Continue while loop
        
                % Check condition if the guess length is longer than the word 
                elseif strlength(guess) > strlength(randomString)
                    fprintf("Error. Your guess is too long. Please try again. \n");
                    continue; % Continue while loop 
        
                else 
                    validGuess = true; % Exit while loop 
                end 
            end 
           
            % Correct guess 
            if strcmp(guess,randomString)
                % Gain 1 game point
                gamePoint = gamePoint + 1;
                fprintf("Correct! \n");  % Print message
                break; % Exit for loop
            else
                % Incorrect guess
                fprintf("Incorrect. You have %d more guesses \n",guessCount)
            end
        
            % Display message box if all guesses are used
            if guessCount == 0
                failedMessage = msgbox(sprintf("Game Over! You ran out of guesses. The word was '%s' \nYour Game Point: %d",randomString,gamePoint));
                % Pause code from proceeding until message box is closed
                uiwait(failedMessage);
            end
        end 
    end 

    % Save highest gamePoint value as highScore
    if gamePoint > highScore
        highScore = gamePoint;
        % Read message box icon image
        icon = imread("achievementCup.jpg");
        newHighScore = msgbox(sprintf("New High Score: %d Points",highScore),"High Score","custom",icon);
        % Pause code from proceeding until message box is closed
        uiwait(newHighScore);
    end 

    % Store gamePoint in a vector
    gamePointRecord = [gamePointRecord gamePoint];

    % Check if user wants to play again
    playAgain = questdlg("Would you like to play again?",'','Play Again','Quit','Quit');
    if strcmp(playAgain, 'Quit') 
        keepPlaying = false; % Exit while loop 
        endMessage = msgbox(sprintf("Thank you for playing! \nYour highscore is: %d Points",highScore)); % Print message
        % Pause code from proceeding until message box is closed
        uiwait(endMessage)
    end 

end








