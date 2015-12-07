// User1

// Initial Solution


//As a user
//I want to sum all the numbers in a list with one function

// function sum(numbers){
//   total=0;
//   numbers.forEach(function (element){
//     total+=element;
//   })
//   return total;
// }

//refactored sum

function sum(numbers){

  return numbers.reduce(
    function(total, num){
      return total + num;
    } , 0);
  }


// As a user
// I want to calculate the median of a list of numbers easily with a function

// function median(numbers){
//   numbers_array = []
//   previous_element = numbers[0];
//   numbers.forEach(function (value){
//     if (value>previous_element)
//       numbers_array.push(value);
//     else
//       numbers_array.unshift(value);
//       previous_element=value;
//   });
//   while (numbers_array.length > 1) {
//     size = numbers_array.length - 1;
//     numbers_array.splice(0,1);
//     numbers_array.splice(size,1);
//   }
//   return numbers_array;
// }

// refactored median

function median(numbers){

  var numbers = numbers.sort();
  var middle = Math.floor(numbers.length / 2);

    if (numbers.length % 2 !== 0){
      return numbers[middle-1];
    } else {
      return (numbers[middle] / numbers[middle+1]);
    }
}

//As a user
//I want to calculate the mode of a list of numbers

// function mode(numbers){
//   var track_numbers = {};
//   var number_repetition = 0;
//   var largest_number = 0
// // creates an object with #'s as keys and how many times the # is listed as a value
//   numbers.forEach(function (value){
//     if(track_numbers.hasOwnProperty(value))
//       track_numbers[value] += 1;
//     else
//       track_numbers[value] = 1;
//   })
// // go through the object and return the number listed most frequently
//   for(var index in track_numbers) {
//     if (track_numbers[index] > largest_number)
//       largest_number = index;
//   }
//   return largest_number
// }

// refactored mode

function mode(numbers){
  var track_instances = {};
  var number_repetition = 0;
  var largest_number = 0
// creates an object with #'s as keys and how many times the # is listed as a value
  numbers.forEach(function (value){
    if(track_instances.hasOwnProperty(value))
      track_instances[value] += 1;
    else
      track_instances[value] = 1;
  })
// go through the object and return the number listed most frequently
  for(var index in track_instances) {
    if (track_instances[index] > largest_number)
      largest_number = index;
  }
  return largest_number
}


//As a user
//I want to calculate the mean of a list of numbers with a function

//refactored

function mean(numbers) {

  var sum = numbers.reduce(
    function(total, num){
      return total + num;
    } , 0);

  return (sum / numbers.length);
}


//As a user
//I want to find out if the code passes or fails the tests I put it into, and return the reason if it failed

function throw_error(test) {
  var error_message = "";
  if (test === false){
      error_message = test;
    return error_message
  }
}

//As a user
//I want to print the sum of a list of numbers to the screen

function print_sum(numbers) {
  console.log(sum(numbers))
}

//As a user
//I want to print the mean of a list of numbers to the screen

function print_mean(numbers) {
  console.log(mean(numbers))
}

//As a user
//I want to print the median of a list of numbers to the screen

function print_median(numbers) {
  console.log(median(numbers))
}
