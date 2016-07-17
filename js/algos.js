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
function longestStr(array) {
  array.sort(function(a,b) {return b.length - a.length});
  console.log(array[0]);
}

// Driver Code //

longestStr(["long string", "longest string", "longer string"]);
longestStr(["mississippi", "sassafrass", "cupcake", "imakickyourcutiepatootie"]);

