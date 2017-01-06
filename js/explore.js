// String reversal in JS

// first take a string
// starting from the end of the string, add the letters, backwards, to a new string
//      - take string length
//      - string length - 1 == index of last letter
//      - for loop will take string length, 
//          then '--' to take next (that is prior) letter
//          adding that letter to a new string until string.length == new string.length


function reverse(word) {
    reversed = ""
   for (var length = word.length; word.length > reversed.length; length --) {
        reversed += word.charAt(length-1)
   }
   return reversed
}

function checkReverse(testWord) {// Printing the reverse of a word unless its a palindrome
    if (testWord == reverse(testWord)) {
        return testWord + " is a palindrome!"
    }
    else {
       return reverse(testWord)
    }
}

function reverseIf(testWord) {
    if ("this is true") {
        return reverse(testWord)
    }
}

// driver code testing the reverse funtion if word isn't a palindrome
var word = "testing"
var testPalindrome = "racecar"

var reversedWord = checkReverse(word)
var reversedPalindrome = checkReverse(testPalindrome)

console.log(reversedWord)
console.log(reversedPalindrome)

// driver code testing returning reversed word if a boolean 
var testReverseIf = reverseIf(word)

console.log(testReverseIf)