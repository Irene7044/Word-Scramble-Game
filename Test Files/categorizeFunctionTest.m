% This test tests the function 'categorize' in the way it's used in
% the wordBank code

% Test 1 - Expected output: 
% test1Easy = big, tree
% test1Hard = small
% test1Difficult = however

test1 = ["small" "big" ; "tree" "however"];
[easy,hard,difficult] = categorize(test1);
test1Easy = easy
test1Hard = hard
test1Difficult = difficult


% Test 2 - Expected output:
% test2Easy = []
% test2Hard = []
% test2Difficult = neverthless, hunting, perplexing

test2 = ["neverthless","hunting","perplexing"];
[easy,hard,difficult] = categorize(test2);
test2Easy = easy
test2Hard = hard
test2Difficult = difficult

% Test 3 - Expected output:
% test3Easy = but, duck, feed, loaf
% test3Hard = pigeon
% test3Difficult = language

test3 = ["but" "duck" "feed" ; "pigeon" "loaf" "language"];
[easy,hard,difficult] = categorize(test3);
test3Easy = easy
test3Hard = hard
test3Difficult = difficult