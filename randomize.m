% This function selects a random element / string in a matrix of the
% wordBank

function[randomString] = randomize(matrix)

% Generate a random row and colume according to the 'matrix' dimensions
    rowIndex = randi(size(matrix,1));
    colIndex = randi(size(matrix,2));

% Accessing element at the randomized row and column 
randomString = matrix(rowIndex,colIndex);

end 