// write a function that takes an array of words or phrases and returns the longest word or phrase in the array. Example: ["long phrase", "longest phrase", "longer phrase"] => "longest phrase"
// input: array of strings
// output: longest string or phrase
// sort the array in descending order from longest string to shorteset string.
// - use built-in function array.sort()
// - write function to evaluate b.length - a.length, and to return result of b - a.
// return the string at index[0] in the array.

function longestStr(array) {
  array.sort(function(a,b) {return b.length - a.length});
  console.log(array[0]);
}

// Driver Code //

