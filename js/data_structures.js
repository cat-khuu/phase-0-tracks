// Pseudocode to create an object with both arrays. Where, the horse name will be the key for the object, and the horse color will be the value.
// Input: horse_colors and horse_names - arrays
// Output: horseDescriptions - object
// Declare empty object as horseDescriptions.
// Create loop to loop through horse_names. So:
// - while index = 0, index < horse_names.length, index +=1 do...
// - horseDescriptions[horse_names[index]] = horse_colors[index];
// print horseDescriptions
// ----------------------------------------- //

// declare two arrays - one with horse colors and the other with horse names
var horse_colors = ["blue sparkles", "purple zebra", "hot pink", "silver rainbows"];

var horse_names = ["Bumblebee", "Glitter", "Zoot", "Cherub"];

// add an item to each array
horse_colors.push("blue clouds");
horse_names.push("Halo");

// print each array to show the item was added
console.log(horse_colors);
console.log(horse_names);

// create an object from both arrays. Where, the key for the object will be the name, and the value will be the color.
var horseDescriptions = {};
for (var index = 0; index < horse_names.length; index +=1) {
  horseDescriptions[horse_names[index]] = horse_colors[index];
}

console.log(horseDescriptions);

// ------------------------------------------- //
// Constructor Function


function Car(color, model, isSafeRide) {
  console.log("My car:", this);

  this.color = color;
  this.model = model;
  this.isSafeRide = isSafeRide;

  this.rev = function() {
    console.log("Vroom! Vroom!");
  };

    console.log("CAR INITIALIZATION COMPLETE");
}

// Call constructor function...

console.log("Let's customize a car...");
var anotherCar = new Car("blue", "Toyota Hybrid", true);

console.log(anotherCar);
console.log("This car is fast. Here it rev its engine:")
anotherCar.rev();
console.log("----");

console.log("Let's customize another car...");
var yetAnotherCar = new Car("silver", "Hummer H3", false);
console.log(yetAnotherCar);
console.log("This " + yetAnotherCar.color + " , " + yetAnotherCar.model + " is fast, too!");
yetAnotherCar.rev();
console.log("----");


// ----------------------------------------- //


// Release 3 - RESEACH ON YOUR OWN:
// How would you loop through the keys and values of an object? The best answer I found was to use the for-in loop paired with hasOwnProperty. Use the hasOwnProperty() with the for-in loop to make sure that the current property you get is an actual property of the object and is not something inherited from its parent (prototype or proto). Objects inherit property from its parents. By using hasOwnProperty(), we are saying we are interested in the objects own property and not its parent properties.

// for (var prop in p) {
//   if (!p.hasOwnProperty(prop)) {
//     // the current property is not a direct property of p
//     continue;
//   }
//   if (p.hasOwnProperty(prop)) {
//     console.log(prop + " => " + p[prop]);
//   }
// };

// Or you could approach iterating over objects by using Object.keys. Object.keys returns an array of the properties of an object that ignores the prototype chain and can be an alternative to the for-in loop.

// Object.keys(source).forEach(function (prop) {
//     target[prop] = source[prop];
// });

// What are the advantages and disadvantages to using constructor functions to create objects? (In other words, literal notation vs. constructor)
// From what I've found -- use literal notation if your object won't need anything beyond a simple container of data.
// Use a constructor to add behavior to your object if you plan on making many instances of your object. If you want the option of having private and public members, then use a constructor. In the object literal, they are all public. Something to keep in mind. Private methods and variables cannot be accessed by public methods. To access private methods, we would create a privileged method. Privileged methods are able to access both private and public methods and variables. Privileged methods can be deleted or replaced, but not altered to give up its secrets.


// Brief overview:
// - Public
// function Constructor(...) {
//      this.membername = value;
//      function membername(...) {...}
// }


// - Private
// function Constructor(...) {
//   var that = this;
//   var membername = value;

//   function membername(...) {...}
// }

// - Privileged
// function Constructor(...) {
//   this.membername = function (...) {...};
// }

// For reference, read: http://javascript.crockford.com/private.html