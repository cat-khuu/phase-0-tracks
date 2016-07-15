// reverse string
// input: string
// output: reverse string
// IF var str is a string (both in type and value) OR as an instance of a string, then print reverse string.
//  REVERSE STRING:
//   - take string and convert to array using.split
//   - reverse array using .reverse
//   - convert array back into a string using.join
//   - return the result (reversed string).
// ELSE if var str is not a string, then print to console and return : "Error: inputted value not a string. Please input a string. (Ex. 'hello')"

function reverseStr(str) {
  if (typeof str === 'string' || str instanceof String)
    // it's a string
    return str.split('').reverse().join('');
  else
  // it's not a string
    notAStr =  console.log("Error: inputted value not a string. Please input a string. (Ex.'hello')");
    return notAStr;

}

