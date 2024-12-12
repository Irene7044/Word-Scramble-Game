% Yen-ling Huang (a1923586)

% This script runs a game of Word Scrambles, with the topics of 'general', 
% 'animals', and 'food' to choose from. As well as the difficulties of 
% 'easy', 'hard', and 'difficult' for each topics. 


% Clear the command window and workspace values 
clear;
clc;

% ------------------------------------------------------------------------

% Wordbank Code: 

% Listing and storing animal words in an array  
animalWords = ["cat" "bear" "crab" "deer" "duck" "fish" "frog" "lion"...
    "cow" "dog" "ant" "bat" "bee" "owl" "rat" "ram" "fox" "elk"...
    "hen" "pig" "bird" "wolf" "mole" "swan" "seal" "toad" "crow" "lark" "wren"...
    "hare" ; "camel" "pigeon" "monkey" "horse" "llama" "alpaca"...
    "mouse" "otter" "sheep" "koala" "eagle" "zebra" "skunk" "shark"...
    "lizard" "rabbit" "weasel" "gecko" "beetle" "tiger" "ferret" "giraffe"...
    "badger" "squid" "octopus" "parrot" "turtle" "donkey" "raccoon"...
    "whale" ; "gorilla" "crocodile" "alligator" "butterfly" "bald eagle"...
    "black bear" "chimpanzee" "grasshopper" "orangutan" "rhinoceros" "woodpecker"...
    "hamster" "octopus" "raccoon" "penguin" "giraffe" "chicken" "axolotl"...
    "cheetah" "kangaroo" "armadillo" "elephant" "platypus" "hedgehog"...
    "squirrel" "flamingo" "scorpion" "tarantula" "chipmunk" "starfish"];

% Calling the categorize function to categorize animalWords array 
[easy,hard,difficult] = categorize(animalWords);

% Storing the elements in separate variables 
easyAnimalWords = easy;
hardAnimalWords = hard;
difficultAnimalWords = difficult;

% ------------------------------------------------------------------------

% Listing and storing food words in an array 
foodWords = ["pea" "bun" "egg" "ham" "jam" "beef" "bean" "cake" "corn"...
    "rice" "fig" "nut" "kiwi" "pear" "lime" "tuna" "soda" "soup" ...
    "tofu" "pork" "salt" "milk" "spin" "fish" "veal" "herb" "oats"...
    "yam" "wrap" "pita" "apple" "bread" "melon" "grape" "peach" "onion"...
    "lemon" "peanut" "melon" "papaya" "curry" "fries" "guava" "honey"...
    "salad" "noodle" "butter" "cherry" "banana" "carrot" "orange" "garlic"...
    "cheese" "tomato" "raisin" "muffin" "yogurt" "turkey" "pickle" "pastry"...
    "biscuit" "burrito" "cupcake" "strawberry" "avocado" "brownie" "mushroom"...
    "nutella" "lollipop" "chocolate" "cucumber" "sandwich" "blueberry" "broccoli"...
    "macaroon" "pineapple" "smoothie" "spaghetti" "zucchini" "pancake" "watermelon"...
    "pineapple" "cauliflower" "raspberry" "cranberry" "strawberry" "raspberry"...
    "hamburger" "potato" "blueberry"];

% Calling the categorize function to categorize foodWords array 
[easy,hard,difficult] = categorize(foodWords);

% Storing the elements in separate variables 
easyFoodWords = easy;
hardFoodWords = hard;
difficultfoodWords = difficult;

% ------------------------------------------------------------------------

generalWords = ["bad" "down" "but" "good" "few" "fly" "was" "jump" "life"...
    "more" "love" "play" "city" "hold" "true" "cold" "high" "long" "near"...
    "hard" "each" "much" "want" "time" "soon" "full" "find" "kind" "stay"...
    "help" ; "endure" "enemy" "shady" "happy" "plain" "files" "excuse" "manner"...
    "absent" "accept" "simple" "choice" "bright" "secure" "golden" "mingle"...
    "travel" "update" "future" "silent" "word" "time" "think" "small" "great"...
    "right" "water" "light" "large" "house"; "however" "romance" "effortless"...
    "awesome" "genuine" "everyday" "diarrhea" "address" "scramble" "definite"...
    "together" "wonderful" "critical" "freedom" "dialogue" "opposite" "complete"...
    "progress" "capacity" "reaction" "hospital" "momentum" "strategy" "disaster"...
    "activity" "positive" "decision" "constant" "exchange" "intention"];

% Calling the categorize function to categorize foodWords array 
[easy,hard,difficult] = categorize(generalWords);

% Storing the elements in separate variables 
easyGeneralWords = easy;
hardGeneralWords = hard;
difficultGeneralWords = difficult;

% ------------------------------------------------------------------------

% PromptuserName code: 

% Prompt user input name 
userName = input('Enter your name: ',"s");

% Popup message box 
introMessage = questdlg(sprintf('Hello %s! Welcome to Word Scramble. Select an option to get started:', userName), 'Welcome Menu','Rules','Play','Quit','Quit');

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
            rules = questdlg(["Game Rules:";" ";"1. Select the difficulty level";" "; ...
                "2. Select a topic from the menu, this will determine the theme of the scrambled words";" "; ...
                "3. Guess and unscramble the word";" "; ...
                "4. You only have 3 guesses for each word, if you run out of guesses, it's game over!";" "; "Good luck and have fun!"],'Rules Menu','Play','Play');
    
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
    
        % callingScrambled Code: 
        
        % Calls and scrambles a word based on the user selected difficulty and category 
        
        % Condition based on topic selection (1 = general)
        switch topics  
            case 1 
                % Condition based on difficulty (1 = easy, 2 = hard, 3 = difficult)
                switch difficulty 
                    case 1 
                      randomString = randomize(easyGeneralWords);
                      scrambledString = scramble(randomString);
                    case 2 
                      randomString = randomize(hardGeneralWords);
                      scrambledString = scramble(randomString); 
                    case 3 
                      randomString = randomize(difficultGeneralWords);
                      scrambledString = scramble(randomString);
                end 
        
        % Condition based on topic selection (2 = food)
            case 2 
                % Condition based on difficulty (1 = easy, 2 = hard, 3 = difficult)
                switch difficulty 
                    case 1
                        randomString = randomize(easyFoodWords);
                        scrambledString = scramble(randomString);
                    case 2 
                        randomString = randomize(hardFoodWords);
                        scrambledString = scramble(randomString);
                    case 3
                        randomString = randomize(difficultfoodWords);
                        scrambledString = scramble(randomString);
                end 
        
        % Condition based on topic selection (3 = animals)
            case 3 
                % Condition based on difficulty (1 = easy, 2 = hard, 3 = difficult)
                switch difficulty 
                    case 1
                        randomString = randomize(easyAnimalWords);
                        scrambledString = scramble(randomString); 
                    case 2
                        randomString = randomize(hardAnimalWords);
                        scrambledString = scramble(randomString);
                    case 3 
                        randomString = randomize(difficultAnimalWords);
                        scrambledString = scramble(randomString);
                end 
        end 
        
        % Display the final scrambled word
        fprintf('The scrambled word is: %s \n',scrambledString);
    
% ------------------------------------------------------------------------
        % answerInputPoints code: 
        
        % Takes 3 guesses from the user and determine whether the guess is correct or incorrect
        
        % Set to number of guesses to 3 for every new scrambled word
        guessCount = 3;
    
        % Loop for 3 guesses
        for i = 1:3 
        
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
                fprintf("Correct! You've earned %d points! \n",gamePoint);  % Print message
                break; % Exit for loop
            else
                % Reduce guessCount by 1 after each loop / wrong guess 
                guessCount = guessCount - 1;
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
    else 
        % Skip rules menu for next game round
        introMessage = 'Play';
    end 

end

% ------------------------------------------------------------------------

% Graph all game round results in a bar graph 
bar(gamePointRecord);
xlabel('Game Rounds');
ylabel('Game Score');
title('Game Score Data');


  