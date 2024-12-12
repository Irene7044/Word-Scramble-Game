% This script lists words of each category (animals, food, and general) and 
% assign them to variables of different difficulties according to the word letter length
% (Each difficulty variable has 30 words) 

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