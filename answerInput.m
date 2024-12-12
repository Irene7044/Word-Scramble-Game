% This script takes 3 guesses from the user and determine
% whether the guess is correct or incorrect, and displays an error if the
% guess consists of none letter characters, or is too short or long 

% Test word to guess
randomString = 'cat';

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
            fprintf("Correct!");
            break; % Exit for loop 
    else
        % Incorrect guess
        fprintf("Incorrect. You have %d more guesses \n",guessCount)
    end

    % Display message box if all guesses are used
    if guessCount == 0
        msgbox(sprintf("Game Over! You ran out of guesses. The word was '%s'",randomString));
    else 
        
    end 

end 


