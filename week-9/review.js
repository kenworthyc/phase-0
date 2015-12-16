// As a user... I want to be able to create a new grocery list, add items to that list, delete items from it, and update the number of items on it, and finally print it out.

//Since the grocery is a list of items linked to numbers, making an object in JavaScript makes sense to me.

/*Pseudocode:
input: items for grocery list
output: printed total grocery list, accounting for items to add, subtract, or update

steps-
1. create empty grocery list container
2. create instructions to add item and number to list
  a. IF item is in list
     go to UPDATE item instructions
     ELSE add item property and number value to list

3. create instructions to delete item from list
  a. remove element and number from list

4. create instructions to update item
  a. IF item is in list
     update item value to PLUS the input number
     ELSE
     go to ADD item instructions

5. create instructions to print the list
  a. tell the user "Grocery List";
  b. tell the user each item with its number
  c. IF value > 1, add 's' to the end of each item string

*/

var groceryList = {};

function addItem(newItem, amt) {
    if (!amt){
      groceryList[newItem] = 1;
    } else {
      groceryList[newItem] = amt;
    }

  console.log(newItem + " has been added to the list.");

}

function removeItem(item) {
  delete groceryList[item];
  console.log(item + " has been removed from the list.");
}

function updateItem(updatedItem, newAmt) {
  for (var currentItem in groceryList) {
    if (updatedItem == currentItem) {
        groceryList[currentItem] = newAmt;
        console.log(currentItem + " has been updated on the list!");
      } else {
        groceryList[updatedItem] = newAmt;
        console.log(updatedItem + " has been added to the list!");
      }
    return groceryList;
  }
}

function printList(groceryList) {
  console.log();
  console.log("Grocery List:");
  for (var listItem in groceryList) {
    if (groceryList[listItem] > 1){
        console.log(groceryList[listItem] + " " + listItem + "s");
      } else {
        console.log(groceryList[listItem] + " " + listItem);
    }
  }
}


//Reflection
/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
How to access object properties in JS, the logic of if-else statements, the limitations of certain object types in JS (strings vs integers), for..in loops, JavaScript preferred naming practices.

What was the most difficult part of this challenge?
I overengineered some of the functions to begin with, and my addItem function suffered (didn't add any items), and my removeItem function was overcomplicated. I should have planned a more basic minimum viable product first.

Did an array or object make more sense to use and why?
An object, since there were definite pairs of items and numbers on the grocery list, and I find that adjusting them is more semantic with the property-value pairs to reference.
*/