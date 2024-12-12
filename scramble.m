% This function takes a word and scrambles it by missplacing each letter's
% order randomly until the scrambled word is not the same as the original

function[scrambledString,originString] = scramble(originString)

% Converting string to character
originChar = char(originString);

% 'while true' to let the function run infinitely until the scrambled word is not the same as the original
    while true
        % Store inputString in another variable 
         inputString = originChar;
        % Initialise scrambledString variable
        scrambledString = [];
    
        % While loop to scramble word
        while strlength(inputString) > 0 
            
            % Generate random index for each character in the string 
            index = randi(length(inputString), 1);
                
            % Append the randomized index to string
            scrambledString = [scrambledString, inputString(index)];
                
            % Remove used letter from the string
            inputString(index) = []; 
            
        end 
        
        % Exit loop if the scrambled word is different from original word
        if strcmp(scrambledString,originChar) == 0
            break;
        end 
    
    end 

end 