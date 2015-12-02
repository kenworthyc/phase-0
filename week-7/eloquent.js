// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var ducks = "duck" + "duck" + "duck";

var food = prompt("What's your favorite food?");
alert("Hey, " + food + " is my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// FizzBuzz
for (var counter = 0; counter <= 100; counter++) {

  if(counter % 3 == 0 && counter % 5 == 0) {
    console.log("FizzBuzz");
  }
  else if(counter % 5 == 0) {
    console.log("Buzz");
  }
  else if(counter % 3 == 0) {
    console.log("Fizz");
  }
  else {
    console.log(counter);
  }
}

 // Triangle
var number = 0;
var string = "";
while (number <= 7) {
  number += 1;
  string += "#";
    console.log(string);
}

number = 8


// Functions

// Complete the `minimum` exercise.



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.