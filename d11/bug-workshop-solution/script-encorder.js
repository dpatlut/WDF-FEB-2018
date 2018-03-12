function encode(word) {
  //somewhere to store the converted characters
  let result = [];
  //next we loop over each character in the string.
  for (let position of word) {
  // and save the charcode to the array
  result.push(word.charCodeAt(word.indexOf(position))); // change this to return index instead of actual char
  }
  // and return that list of codes, separated by colons
  return result.join(':');
}

function decode(hash) {
  //split the code by semicolons!
  let arr = hash.split(':');
  // again somewhere to put our codes
  let result = [];
  //loop over the codes
  for (let code of arr) {
  //change the code back to the string character equivalent
  result.push(String.fromCharCode(code)); //
  }
  return result.join('');
}


let message = "My name is Groot";
let encodedMessage = encode(message);
let decodedMessage = decode(encodedMessage);


console.log(message);
console.log(encodedMessage);
console.log(decodedMessage);