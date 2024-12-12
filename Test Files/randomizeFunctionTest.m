% This test tests the function 'randomize', testing 10 times for each test
% cases

% Test 1 (animals) - Expected output: displaying different strings in the matrix
matrix1 = ["cat" "rabbit"; "horse" "dog"];
for i = 1:10
    randomString = randomize(matrix1);
    disp(randomString);
end 

% Test 2 (food) - Expected output: displaying different strings in the matrix
matrix2 = ["candy" "bread" "pizza"; "pasta" "chocolate" "mango"];
for i = 1:10
    randomString = randomize(matrix1);
    disp(randomString);
end 

% Test 3 (general) - Expected output: displaying different strings in the matrix
matrix3 = ["however" "run" "cool" "rotten"; "people" "jail" "podcast" "celebrity"];
for i = 1:10
    randomString = randomize(matrix1);
    disp(randomString);
end 
