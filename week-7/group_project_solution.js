// As a user
// I want to create a sum, median, and mode function that returns the correct value
// So that I don’t have to do it manually
// Pseudocode User1
  /*
      INPUT: list of numbers
      OUTPUT: sum, median, or mode of the list of numbers

      1. create three functions: sum, median, and mode.
      2. each function accepts a list (array) of numbers as arguments
      3. use math and comparisons to make each function operate as desired:
        i. SUM
          a. create empty variable 'sum'
          b. access each element in the array
          c. add each element to the last
          d. assign the final sum to the sum variable, return 'sum'
        ii. MEDIAN
          a. create empty variable 'median'
          b. access each element in the array
          c. sort the numbers numerically
              IF one element is greater than the last element
              THEN move the greater element to the end
          d. WHILE the number of elements in the array is greater than 1
                 i. remove first element
                 ii. remove last element
          e. assign the last element to median variable, return 'median'
        iii. MODE
          a. create empty object, for keeping track of numbers and occurrences in array
          b. create empty variable for the number of times a number is repeated
          c. access each element in array
          d. in empty object: add each element from array as a property, value = 1
                IF element is equal to a property in the object
                THEN add 1 to value of that property
          e. access the value of each property in object
          f. assign the property (with the highest value) to mode variable, return 'mode'

  */

// As a user
// I want to have a function that returns an error message when an invalid test is passed
// So that the user knows why the function did not execute properly
// Pseudocode User2
  /*
      INPUT: invalid test
      OUTPUT: error message outlining the error

      1. define a function to throw an error
      2. create empty string variable to contain the error message
      3. IF the test returns false
          set error variable = the string from test
         END
      4. return error variable

      //personal note- was there any material how to access or write JS error messages? are we supposed to research this? what??

  */

// As a user
// I want to have a function that returns the sum
// So that I can easily calculate the total value of all the numbers in a odd or even number list
// Pseudocode User3
  /*
      INPUT: list of numbers
      OUTPUT: sum of numbers from list (whether or not the number of elements is even or odd)

      1. use sum logic from previous method:
          a. create empty variable 'sum'
          b. access each element in the array
          c. add each element to the last
          d. assign the final sum to the sum variable, return 'sum'

//personal comment- I have no idea why this one is supposed to be different from previous sum function. are we supposed to write an error-throwing code for it? if so, again when did we learn how to raise argument errors in JS?

  */

// As a user
// I want to have a function that returns the mean
// So that I can easily calculate the average of all the numbers in a odd or even number list
// Pseudocode User4
  /*
      INPUT: list of numbers
      OUTPUT: mean of numbers

      1. define a function for the mean of all array numbers
      2. create empty variable 'mean'
      3. use logic from 'sum' method to assign the sum of all numbers to variable 'sum'
      4. count the number of elements in the array
      5. divide sum variable by the number of elements in the array, and
      6. assign this value to mean variable, return 'mean'

  */

// As a user
// I want to have a function that returns the median
// So that I can easily calculate the middle value of all the numbers in a odd or even number list
// Pseudocode User5
  /*
      INPUT: list of numbers
      OUTPUT: median of list of numbers, accounting for odd or even sets from the list.

      1. define a function for the median of array with odd/even number of elements
      2. create empty variable 'median_even_or_odd'
      3. calculate the number of elements in the list of numbers
          IF this number is odd,
              a. access each element in the array
              b. sort the numbers numerically
                  IF one element is greater than the last element
                  THEN move the greater element to the end
              c. remove the first element, then the last element
                  repeat WHILE the number of elements in the array is greater than 1
              d. assign the last element to median_even_or_odd variable
          ELSE (number of elements is even,)
              a. access each element in the array
              b. sort the numbers numerically
                  (IF one element is greater than the last element
                   THEN move the greater element to the end)
              c. WHILE the number of elements in the array is greater than 2
                     i. remove first element
                     ii. remove last element
              d. find the MEAN of these two numbers:
                  call function 'mean' within median
              e. assign return value of function to median_even_or_odd variable
          END
      4. return median_even_or_odd

  */