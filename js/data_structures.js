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