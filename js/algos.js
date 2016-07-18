// FUNCTION: longestStr
// Input: array of strings
// Output: longest string or phrase
// Sort the array in descending order from longest string to shorteset string.
// - Use built-in function array.sort()
// - Write function to evaluate b.length - a.length, and to return result of b - a.
// Return the string at index[0] in the array.
// ########################################### //


// FUNCTION: keyValuePairMatch
// Input: two objects - hashes
// Output: return true if there is a key-value pair match, and false if there is no match
// Separate the keys from the values in both objects into two arrays named arrayKeys1 and arrayKeys2.
// Define variable totalMatches = 0. (totalMatches will increase if there is match.)
// Loop through the arrays for any matches:
// - index = 0, index < arrayKeys1.length, index +=1...do:
// - IF arrayKeys1[index] == arrayKeys2[index], then push arrayKeys1[index] into the array named keyMatches.
// Compare values between object1 and object2:
// - Use the items in keyMatches as a way to call the values in each object. Compare the values for object1 and object2. Example: keyMatches = ["name", "age"], object1[keyMatches[0]] == object2[keyMatches[0]]
// - IF there is a key-value pair match between, then increase totalMatches by +=1.
// - ELSE, don't increase totalMatches.
// Total Matches:
// - IF totalMatches is greater than 0, then return true.
// - ELSE, return false.

// ########################################### //

// FUNCTION: generateRandomString
// Define variables alpha (character set to generate random strings), result (empty string), array (empty array to contain random strings)
// Create loop:
// - While i = 0, i < num, i +=1, do:
// Define variable result as an empty string that resets itself after each random string is created and is pushed in array
// Create another loop, such that:
// - each random string is at least greater than 0 (no empty strings) and the length of each string is between 1 and 10, however, the length is chosen randomly
// Choose each letter randomly from alpha. Example: alpha[random number between alpha.length]
// Append each random letter to result
// Push result into array
// Repeat process until specified number
// Print array once number of random strings has been generated
// Return array

// ########################################### //

function longestStr(array) {
  array.sort(function(a,b) {return b.length - a.length});
  console.log(array[0]);
}


function keyValuePairMatch(object1, object2) {
  var arrayKeys1 = []; arrayKeys2 = [];
  var keyMatches = [];
  var totalMatches = 0;

  for (var keys1 in object1) {
    if (!object1.hasOwnProperty(keys1)) {
      continue;
    }

    arrayKeys1.push(keys1);
  }

  for (var keys2 in object2) {
    if (!object2.hasOwnProperty(keys2)) {
      continue;
    }

    arrayKeys2.push(keys2);
  }


  for (var index = 0; index < arrayKeys1.length; index +=1) {
    if (arrayKeys1[index] == arrayKeys2[index]) {
      keyMatches.push(arrayKeys1[index]);
    }
  }

  for (var e = 0; e < keyMatches.length; e +=1) {
      if (object1[keyMatches[e]] == object2[keyMatches[e]]) {
        totalMatches +=1;
      }
    }


  if (totalMatches > 0) {
    return true;
  } else {
    return false;
  }

}


function longestStr(array) {
  array.sort(function(a,b) {return b.length - a.length});
  console.log(array[0]);
}


function generateRandomString(num) {
    var  alpha = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    var result = "";
    var array = [];

    for (var i = 0; i < num; i+=1) {
    result = "";
    while (result.length < Math.floor(Math.random() * 10) +1  && num > 0) {
     result += alpha[Math.floor(Math.random() * alpha.length)];
      }
     array.push(result);
    }
    console.log(array);
    return array;

}


// Driver Code //

// longestStr(["long string", "longest string", "longer string"]);
// longestStr(["mississippi", "sassafrass", "cupcake", "imakickyourcutiepatootie"]);

console.log(keyValuePairMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(keyValuePairMatch({color: "green", pet: "dog"}, {name: "green", animal: "dog"}));