// reversing a string (pseudocode):
// create method called reverse that takes in a string as an argument
// start a counter that will increment through the length of the string
// loop through the letters of the string and set them equal to a new variable
// new variable can be called reversed_string
// keep adding the letters at i to the beginning of the variable

function reverse(str) {
    var reversedString = ""
    var isOne = true
    if (isOne) {
        console.log(reversedString);
    } else {
        return null;
    }
    for (var i = 0; i < str.length; i++) {
        (reversedString = str[i] + reversedString);
    }
    console.log(reversedString);
}

// driver code:
var newVariable = "";
newVariable = reverse("hello");
return newVariable;
// added conditional statements lines 10-15


