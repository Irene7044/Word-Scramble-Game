% This script calls and scrambles a word based on the user selected
% difficulty and category 

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
fprintf('The scrambled word is: %s',scrambledString);
