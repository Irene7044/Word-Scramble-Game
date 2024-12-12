% This function categorizes elements/words in vector x into the 'easy', 
% 'hard', and 'difficult' variables according to the length of the word

function [easy,hard,difficult] = categorize(x)

% Initialise variables as empty cell arrays
easy = [];
hard= [];
difficult = [];

% Loop to categorize every element of vector x 
for i =1:size(x,1)
    for j = 1:size(x,2)
        % Check condition and store in respective variables
    
        % If the word has less than or equal to 4 letters 
        if strlength(x(i,j)) <=4
            easy = [easy x(i,j)];
    
        % If the word has 5 to 6 letters (inclusive)
        elseif strlength(x(i,j)) >= 5 && strlength(x(i,j)) <= 6
            hard = [hard x(i,j)];
            
        % If the word has more than or equal to 7 letters 
        elseif strlength(x(i,j)) >= 7 
            difficult = [difficult x(i,j)];
        end 
    end 
    
end 

end 
