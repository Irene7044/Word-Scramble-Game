% This test tests the function 'scramble', testing 10 times for each test
% cases

% Test 1 - Expected output: (Results should not include 'cat') 

for i = 1:10 
    % Calling the function to scramble 'cat'
    scrambledString = scramble('cat');

    % Print error if scrambled word is same as input word 
    if strcmp(scrambledString,'cat') == 1 
        disp('Error'); 
    else 
        disp(scrambledString);
    end 
end

% Test 2 - Expected output: (Results should not include 'kangaroo') 

for i = 1:10 
    % Calling the function to scramble 'cat'
    scrambledString = scramble('kangaroo');

    % Print error if scrambled word is same as input word 
    if strcmp(scrambledString,'kangaroo') == 1 
        disp('Error'); 
    else 
        disp(scrambledString);
    end 
end

% Test 3 - Expected output: (Results should not include 'marshmallow') 

for i = 1:10 
    % Calling the function to scramble 'cat'
    scrambledString = scramble('marshmallow');

    % Print error if scrambled word is same as input word 
    if strcmp(scrambledString,'marshmallow') == 1 
        disp('Error'); 
    else 
        disp(scrambledString);
    end 
end












