// JavaScript Olympics

// I paired [Caroline Kenworthy & Phil Thomas] on this challenge.

// This challenge took us [1.75] hours.

// Bulk Up

var athletes = {
    'Sarah Hughes': {
        name: 'Sarah Hughes',
        event: 'tennis'
    },
    'Michael Phelps': {
        name: 'Michael Phelps',
        event: 'swimming'
    },
    'Ronda Rousey': {
        name: 'Ronda Rousey',
        event: 'MMA'
    }
};

//declare function AddWin that adds win property
function addWin(athlete) {
  athlete.win = athlete.name + ' won in ' + athlete.event;
}


// driver code

addWin(athletes['Sarah Hughes']);

console.log(athletes['Sarah Hughes'].win);


// Jumble your words

function reverseString(string) {
  string.split('').reverse().join('');
}


// 2,4,6,8

function isEven(value) {
  return value % 2 === 0;
}

function returnEvens(nums_array) {
 return nums_array = nums_array.filter(isEven);
}


//driver code
// var array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
// console.log(returnEvens(array));

// "We built this city"

function Athlete(name, age, sport, quote) {
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
}


// driver code
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");
console.log(michaelPhelps.constructor === Athlete);
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote);


// Reflection

/*
What JavaScript knowledge did you solidify in this challenge?
Still getting into the habit of recognizing syntax errors, defining functions
correctly, and putting semicolons everywhere! It was particularly beneficial
to get into reading MDN's docs for JavaScript— I didn't actually think JS had
so many built-in methods in the way Ruby does.

What are constructor functions?
Constructor functions create a new object whenever they are called. The object
will be created and be accorded any properties defined within the constructor
function. The constructor function will only create a new object when it is called
with the correct number/type of arguments (not automatically).

How are constructors different from Ruby classes (in your research)?
Constructors are a bit like Ruby classes, but in JS, the parameters of a new
object are defined within the constructor function itself. That is, the attributes
and properties of the object are generated every time the constructor function is run.
(In Ruby classes, the class is created separately from the method that creates the
object [which would be Class.new, *after* the Class was already defined].)

*/