
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
    return result // returns true/false
};

var objA = {name: "Steven", years: 54};
var objB = {name: "Tamir", age: 54};
var objC = {alias: "Steven", age: 10};
var objD = {"Street Name": "Bob", years: 10};
var objE = {nameBackwards: "Bob", age: 54};
var objF = {something: "Tammy", howMany: 20};

keyValMatch = keyValueMatch(objA, objB);
console.log(keyValMatch);
console.log(keyValueMatch(objB, objE));
console.log(keyValueMatch(objF, objA));
console.log(keyValueMatch(objD, objB));
console.log(keyValueMatch(objA, objE));


