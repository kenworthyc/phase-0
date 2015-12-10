// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Jack Abernathy and Caroline Kenworthy
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// loop over the person properties in the object votes
  // access each value for person-prop, which is an object
  // access each property in vote-obj
  //then assign matching property name to property in officers-obj

// loop over counted votes and find max number-value
  // create max variable, set to 0
  // iterate through candidate-vote-values within votes-obj
  // if each candidate-votes-value is greater than max, set to max
  // max = (winning) candidate; output to officers object

// __________________________________________
// Initial Solution


// for (var person_key in votes) {
//   var vote = votes[person_key];
//   for (var office in vote) {
//     var name = vote[office];
//     if (typeof voteCount[office][name] === "undefined")
//       voteCount[office][name] = 1;
//     else
//       voteCount[office][name] += 1;

//   }
// }

// for (var titles in voteCount) {
//   var max = 0;
//   var office = voteCount[titles];

//   for (var candidate in office) {
//     var votes = office[candidate];
//     if (votes > max) {
//       max = votes;
//       officers[titles] = candidate;
//     }
//   }

// }

// __________________________________________
// Refactored Solution

var max = {
  president: 0,
  vicePresident: 0,
  secretary: 0,
  treasurer: 0
}

for (var student in votes) {
  var vote = votes[student];

  for (var title in vote) {
    var candidate = vote[title];

    typeof voteCount[title][candidate] === "undefined" ? (
      voteCount[title][candidate] = 1
      ) : (
      voteCount[title][candidate] += 1
      );

    if (max[title] < voteCount[title][candidate]){
      max[title] = voteCount[title][candidate];
      officers[title] = candidate;
    }

  }
}


// __________________________________________
// Reflection
/*

What did you learn about iterating over nested objects in JavaScript?
It's not too different from iterating over nested structures in Ruby, but there's an added complexity given that in JS, you access a key or value with the dot or bracket constructor. So, naming the variables appropriately becomes crucial for any amount of readability. It's so easy to get astray from the level or object you're pointing to— my pair and I had to go over that

Were you able to find useful methods to help you with this?
In order to add one vote for a previously not voted-for candidate, we had to be sure there wasn't already a tally for the candidate. So we found a way check for an undefined (nonexistent) prop-value pair, using 'typeof variable === 'undefined' ?'.

What concepts were solidified in the process of working through this challenge?
My pair helped a lot with my understanding of the structure of nested for..in loops, and also with the possible ways we could shorten the logic of our code. Realizing that we didn't have to change the values to an array and sort it, but simply assign one variable to one value, and if subsequent values were greater than the variable, reassign to that value.

*/
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)