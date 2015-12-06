// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with Sean Massih

/* Pseudocode
INPUT: a number
OUTPUT: same number as a string with commas inserted appropriately

Steps
1. create empty variable for new comma'd number
2. turn input number into string
3. check the length of the string
4. if it is greater than 3, we reverse the string.
5. get number (str_len) for string length and store it to a variable
6. WHILE str_len < string divided by 3 (integer division)
     a. slice first three numbers in string,
     b. put into empty variable,
     c. add comma to string
     subtract 3 from str_len
       IF str_len > 0
       slice remaining string
7. reverse the changed string back to normal, and return
*/

// Initial Solution

// function separateComma(number) {
//   var num_str = (""+number).split("");
//   var str_len = num_str.length;
//   var new_str = [];
//   while (Math.floor(str_len/3)>0) {
//     console.log(new_str);
//     new_str.push(num_str.pop());
//     new_str.push(num_str.pop());
//     new_str.push(num_str.pop());
//     if(str_len/3>1) {
//       new_str.push(",");
//     }
//     str_len -= 3;
//   }
//   var i = 0;
//   for (;i<str_len;i++) {
//     new_str.push(num_str.pop());
//   }

//   var final_str = new_str.reverse().join('');
//   return final_str;
// }



// Refactored Solution

// function separateComma(number) {
//   var num_str = (""+number).split("");
//   var str_len = num_str.length;
//   var new_str = [];
//   while (Math.ceil(str_len/3)>0) {
//       for (i = 0; i < 3; i++) {
//           new_str.push(num_str.pop());
//         }
//     if(str_len/3>1) {
//       new_str.push(",");
//     }
//     str_len -= 3;
//   }
//   for (var i = 0; i < str_len; i++) {
//     new_str.push(num_str.pop());
//   }

//   var final_str = new_str.reverse().join('');
//   return final_str;
// }

// console.log(separateComma(433334890));


//This is a refactor using slice-unshift rather than push-pop,
//but I was unsuccessful in converting nested arrays to strings using
//.join(); I must be using iterators to access nested arrays incorrectly.

function separateComma(number) {
  var num_arr = (""+number).split("");
  var num_len = num_arr.length;
  var amt_commas = Math.ceil(num_len / 3);

  var new_arr = [];
  var beg_index = -6;
  var end_index = -3;

  new_arr.unshift(num_arr.slice(-3));

  for (var i = 0; amt_commas - 1 > 0; i++) {
        new_arr.unshift(num_arr.slice(beg_index, end_index));
        amt_commas -= 1;
        beg_index -= 3;
        end_index -= 3;
    }

  console.log(new_arr);

  var str_arr = [];

  for (i of new_arr) {
    new_arr1 = new_arr[i];
      for (i of new_arr1) {
        new_arr = new_arr[i].join('');
      }
  }
   return new_arr

}
console.log(separateComma(4333477677890));



// Your Own Tests (OPTIONAL)




// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript?
Did you approach the problem differently?
Not very differently; I think it was hard for us to think originially in
JavaScript due to inexperience with the language. We spent much of the time
figuring out which aspects of Ruby couldn't be performed in JavaScript.

What did you learn about iterating over arrays in JavaScript?
We solidified a lot of knowledge about the syntax of for loops, and the options/benefits with other loops (do...while and while loops mostly).

What was different about solving this problem in JavaScript?
What I found different were certain limitations that JavaScript had, such as
immutable strings; in order to access the individual numbers within the strings,
reverse the string, etc, we chose to convert the string to an Array using .split().

What built-in methods did you find to incorporate in your refactored solution?
We used a fair amount of them in the initial solution. We were a little
short on time, and our refactoring involved automating commands we had called
3 times with a for loop.

*/