/* Sort the array, longest string last, return last place in sorted array
    First we need to take an array
        going through the array index by index, checking if the index behind the index is greater
            if it is, they need to switch
                index-1 = index, index = index-1
            Then go backwards down the line, checking if each one needs to switch
                index number backwards until 0, each of the indexes
            when it doesn't need to switch anymore, goes to next spot in array and goes again
        return new array
*/
function longestPhrase(array) {// this is insertion sort for javascript, returns last item (longest phrase)
    for (i = 1; i < (array.length); i++) {// iterates through each of the items in passed array, only works when they are strings
        if (array[i].length < array[i-1].length) { // if the item behind the index' length is greater
            for (ii = i; ii > 0; ii-= 1 ) {// for the index down to 0, ii is now basically i, just the second level ennumerator
                if (array[ii].length < array[ii-1].length) {// it will take the original, then test each spot down the array for the one on the left being greater, if it is, it switches them
                    var delta = array[ii-1]// had to declare a separate var so that the switch could take place
                    array[ii-1] = array[ii]
                    array[ii] = delta
                }
            }
        }
    }
    return array[array.length-1]// returns the last item in the array
};

/* return true if values match irregardless of key name 
    If values anywhere in the objects match, return true
        take the first object, values
            returns each of the values 
        compare the values of the second object
            same procedure as first, but compares each of the second's values to each of the first
                then moves to first's second index, compares each of the second's values
        if at any point the values match, return true

*/

function keyValueMatch(obj1, obj2) {
    var result = false // will return false unless true
    for (key in obj1) {// takes first object, compares every value in second against it
        for (keys in obj2) {
            if (obj1[key] == obj2[keys]) { // if equal, returns true
                result = true
            }
        }
    }
    if (Object.keys(obj1).length != Object.keys(obj2).length) {
        result = false
    }
    return result // returns true/false
};

/* generate a new array of strings of inputted integer's length
    generates random strings of letters between 1-10 letters long
        random number of times(length of string)
            random letters in string (picked from a supplied alphabet)
    return the array
*/

function randomTestData(times) {
    var alphabet = "abcdefghijklmnopqrstuvwxyz"
    var result = []

    for (var samples = 0; samples < times; samples++) {
        var word = ""
        for (size = 0; size < (Math.floor((Math.random()*10) + 1)); size++) {
            word += alphabet[Math.floor(Math.random()*25)+1]
        }
        result.push(word)
        word = ""
    }
    return result
};

/*
var phrases = ["long phrase","longest phrase","longer phrase"];
var test_phrases = ["several", "different", "phrases", "all", "to", "make", "a", "test"]
var other_phrases = ["JS", "seems", "much", "faster", "than", "Ruby"]

var sorted = longestPhrase(phrases);
var longest_test_phrase = longestPhrase(test_phrases);
var longest_other_phrase = longestPhrase(other_phrases);
console.log(sorted);
console.log(longest_test_phrase);
console.log(longest_other_phrase);


var objA = {name: "Steven", years: 54};
var objB = {name: "Tamir", age: 54};
var objC = {alias: "Steven", age: 10};
var objD = {"Street Name": "Bob", years: 10};
var objE = {nameBackwards: "Bob", age: 54};
var objF = {something: "Tammy", howMany: 20};
var objG = {something:"Tammy"}

keyValMatch = keyValueMatch(objA, objB);
console.log(keyValMatch);
console.log(keyValueMatch(objB, objE));
console.log(keyValueMatch(objF, objA));
console.log(keyValueMatch(objD, objB));
console.log(keyValueMatch(objA, objG));
*/

for (times = 0; times != 10; times++) {
    test = randomTestData(6);
    console.log("Data generated for testing : " + test);
    testLongest = longestPhrase(test)
    console.log("Longest Phrase in test array: " + testLongest)
};


