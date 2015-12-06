// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: participate in adding game until your points reach 50
// Overall mission:
// Goals: complete individual equations for points
// Characters: player 1, computer
// Objects: player 1, Countdown Computer
// Functions:
// -generate random numbers: small & big to operate
// -check p1 input
// -add points
// -


/*
// Pseudocode
INPUT: operator
OUPUT: points
1. Introduce game & rules to player
2. create p1 profile;
  a. create object with labels for
    -name
    -points
3. create CPU profile;
  a. create object with labels for
    -name
    -points
4. create method to generate random numbers from a range, assign variables.
    a. use random-number generator:
      bb. to create list of 6 numbers:
        2 big: 25, 50, 75, 100
        4 small: 1-10
      bc. to create target number:
        1 target: 100-999
5. create method to check p1's input
  a. create a variable which contains a range + or - 10 from target number
  b. IF p1's answer is equal to target number
     THEN add 10 points to p1's profile
     ELSE IF p1's answer is within the range
     THEN add 5 points to p1's profile
     ELSE add 7 points to CPU's profile
  c.


*/

// Initial Code

console.log("Welcome to Countdown Computer:  \n \t \t The game for sharp arithmetic operators!\n   In this game, you'll be given a set of 6 numbers: \n some big (25, 50, 75, or 100) and some small (1-10).\n   Your job is to quickly use as many of the 6 numbers as you need to reach the target number. Some targets will be difficult and some may not— but you must reach within a range of 10 from the target to get points!");

var player_1 = {
  name: "",
  points: 0
};

var player_2 = {
  name: "Computer",
  points: 0
};

randTargetNum = function(100, 1000) {
  return Math.random() * (1000 - 100) + 100;
}

randSmallNum = function(1, 10) {
  return Math.floor(Math.random() * (10 - 1 + 1)) + 1;
}

//to-do: generalize rand function, call specific functions for target num and small num (w/ inputs (100, 1000) & (1, 10))

randBigNum = function(values) {
  var values = [25, 50, 75, 100];
  return values[Math.floor(Math.random() * values.length)];
}




// Refactored Code






// Reflection
//
//
//
//
//
//
//
//