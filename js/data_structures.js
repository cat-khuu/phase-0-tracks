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