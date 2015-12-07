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
// -check for winner


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
5. create input method for player
6. create method to add points to profiles
7. create method to check p1's input
  a. create a variable which contains a range + or - 10 from target number
  b. IF p1's answer is equal to target number
     THEN add 10 points to p1's profile
     ELSE IF p1's answer is within the range
     THEN add 5 points to p1's profile
     ELSE add 7 points to CPU's profile
8. create method to check if there's a winner

*/

// Initial Code

// if (!Array.prototype.includes) {
//   Array.prototype.includes = function(searchElement /*, fromIndex*/ ) {
//     'use strict';
//     var O = Object(this);
//     var len = parseInt(O.length) || 0;
//     if (len === 0) {
//       return false;
//     }
//     var n = parseInt(arguments[1]) || 0;
//     var k;
//     if (n >= 0) {
//       k = n;
//     } else {
//       k = len + n;
//       if (k < 0) {k = 0;}
//     }
//     var currentElement;
//     while (k < len) {
//       currentElement = O[k];
//       if (searchElement === currentElement ||
//          (searchElement !== searchElement && currentElement !== currentElement)) {
//         return true;
//       }
//       k++;
//     }
//     return false;
//   };
// }


// var player_1 = {
//     name: "",
//     points: 0
// };

// var player_2 = {
//     name: "Computer",
//     points: 0
// };

// function randomNum(min, max) {
//   return Math.floor(Math.random() * (max - min) + min);
// }

// function randomArrayElement(array) {
//   return array[Math.floor(Math.random() * array.length)];
// }

// function rangePlusMinusTen(num) {
//   var start = num - 10;
//   var end = num + 10;
//   var range = [];
//   for (var i = start; i <= end; i ++){
//     range.push(i);
//   }
//   return range
// }

// var targetNum = randomNum(100, 1000);

// var targetRange = rangePlusMinusTen(targetNum);

// function smallNum() {
//   return randomNum(1, 10);
// }

// function bigNum() {
//   return randomArrayElement([25, 50, 75, 100]);
// }

// var playerNums = [bigNum(), bigNum(), smallNum(), smallNum(), smallNum(), smallNum()];

// function answer(equation) {

//   function addPoints() {
//         if (equation === targetNum) {
//           console.log("Absolutely excellent! 10 points!");
//           player_1.points += 10;
//         } else if (targetRange.includes(equation)) {
//           console.log("Good one, you're in the range! 5 points!");
//           player_1.points += 5;
//         } else {
//           player_2.points += 7;
//           console.log("Yikes, your opponent gets 7 points.");
//         }
//     while (checkWinner(); == false) {
//       turn();
//     }

//   }

// return addPoints();

// }

// function checkWinner () {
//   if (player_1.points >= 35){
//     return true;
//     console.log("You win!");
//   } else if (player_2.points >= 35){
//     return true;
//     console.log("The computer won. :( Play again?");
//   } else {
//     return false;
//   }
// }


// function intro() {
//   console.log("Welcome to Countdown Computer:  \n \t \t The game for sharp arithmetic operators! \n In this game, you'll be given a set of 6 numbers: \n some big (25, 50, 75, or 100) and some small (1-10).\n Your job is to quickly use as many of the 6 numbers as you need to reach the target number. Some targets may be difficult and some not— but you must calculate to within 10 of the target to get points, or else your opponent will win!");
//   console.log("Here are your commands:\nturn();\nshowPoints();\n");
// }

// function turn(){
//       console.log('To take your next turn, type:');
//       console.log('turn();');
//       console.log();
//       console.log('Here is your target number: ***' + targetNum + '***');

//       console.log();
//       console.log('Here are your operating numbers: ***' + playerNums.join(', ') + '***');
//       console.log();
//       console.log('You may only use +, -, *, and / (plus and parentheses if you wish). To enter your answer, type:');
//       console.log('answer(YOUR EQUATION HERE);');
//       console.log();

// }

// function showPoints(){
//   console.log("You have " + player_1.points +" points.");
//   console.log("Your opponent has " + player_2.points +" points.");

// }

// intro();
// turn();



// Refactored Code

var player_1 = {
    name: "",
    points: 0
};

var player_2 = {
    name: "Computer",
    points: 0
};

function randomNum(min, max) {
  return Math.floor(Math.random() * (max - min) + min);
}

function randomArrayElement(array) {
  return array[Math.floor(Math.random() * array.length)];
}

function rangePlusMinusTen(num) {
  var start = num - 10;
  var end = num + 10;
  var range = [];
  for (var i = start; i <= end; i ++){
    range.push(i);
  }
  return range
}

// function include(num, array){
//   for (i in array) {
//     if (i === num){
//     return true;}
//     else {
//       return false;
//     }
//   }
// }

var targetNum = randomNum(100, 1000);

var targetRange = rangePlusMinusTen(targetNum);

function smallNum() {
  return randomNum(1, 10);
}

function bigNum() {
  return randomArrayElement([25, 50, 75, 100]);
}

var playerNums = [bigNum(), bigNum(), smallNum(), smallNum(), smallNum(), smallNum()];

function answer(equation) {

  function addPoints() {
        if (equation === targetNum) {
          console.log("Absolutely excellent! 10 points!");
          player_1.points += 10;
        } else if (targetRange.includes(equation)) {
          console.log("Good one, you're in the range! 5 points!");
          player_1.points += 5;
        } else {
          player_2.points += 7;
          console.log("Yikes, your opponent gets 7 points.");
        }
    while (checkWinner(); == false) {
      turn();
    }

  }

return addPoints();

}


function checkWinner() {
  if (player_1.points >= 35){
    return true;
    console.log("You win!");
  } else if (player_2.points >= 35){
    return true;
    console.log("Your opponent won. Play again?");
  } else {
    return false;
  }
}

function intro() {
  console.log("Welcome to Countdown Computer:  \n \t \t The game for sharp arithmetic operators! \n In this game, you'll be given a set of 6 numbers: \n some big (25, 50, 75, or 100) and some small (1-10).\n Your job is to quickly use as many of the 6 numbers as you need to reach the target number. Some targets may be difficult and some not— but you must calculate to within 10 of the target to get points, or else your opponent will win!");
  console.log("Here are your commands:\nturn();\nshowPoints();\n");
}

function turn(){
      console.log('To take your next turn, type:');
      console.log('turn();');
      console.log();
      console.log('Here is your target number: ***' + targetNum + '***');

      console.log();
      console.log('Here are your operating numbers: ***' + playerNums.join(', ') + '***');
      console.log();
      console.log('You may only use +, -, *, and / (plus and parentheses if you wish). To enter your answer, type:');
      console.log('answer(YOUR EQUATION HERE);');
      console.log();

}

function showPoints(){
  console.log("You have " + player_1.points +" points.");
  console.log("Your opponent has " + player_2.points +" points.");

}

intro();
turn();


// Reflection
/*

What was the most difficult part of this challenge?
The planning, and understanding which elements of the game to wrap into functions so it would... function. It took me a while to get that I had to make a function that would activate the next turn of the game. Some of the random number gymnastics were finicky as well, but not terrible.

What did you learn about creating objects and functions that interact with one another?
That objects and functions that interacted was pleasantly easy for me. Accessing the points property was simple (once I remembered the syntax), and it all went smoothly, even checking the number of points to see if a player had won.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
.includes would simplify my range function, but the polyfill that the docs recommend adding is a bummer, since I don't really understand it. .includes just iterates over an array to see if any of the values are equal to the argument it's passed. I love the way the method looks in the code, though— makes it so readable.

How can you access and manipulate properties of objects?
The syntax can look two different ways:
object.property
object["property"]
In both cases, you would reassign it with '= new_value'. The bracket constructor is useful for arrays, while the dot constructor is useful for singular properties of an object.
*/