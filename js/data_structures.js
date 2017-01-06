//an array of four colors ("blue", for instance, though you're welcome to get crazy with something like "iridescent blue/green with silver sparkles")

var colors = ["Blue", "Black", "Pink", "Red"];

//an array of four names that you might give a horse ("Ed" is always a solid choice to start with)

var horse = ["Ed", "Steve", "Sea Biscuit", "Secretariat"];

//Write additional code that adds another color to the colors array, and another horse name to the horses array.

colors.push("Green");

horse.push("Fred");

console.log(colors)
console.log(horse)

//add code that will use your two arrays to create an object. The keys of your object should be horse names, and the values should be colors

var pairing = {}

for (var i = 0; i < horse.length; i++) {
  pairing[horse[i]] = colors[i];
}

console.log(pairing)

//write a constructor function for a car. Give it a few different properties of various data types, including at least one function

//create an object with car parts and values associated with car parts (tires: Goodyear, engine: 6-cylinder). Function that gives the driver instructions on optimal driving conditions (SUV: mountains, sportscar: highways). Prints honk.

car_obj = {tires: 'Goodyear', engine: '6-cylinder', make: 'Ford' }

function Car(tires, engine, make){

  this.tires = tires;
  this.engine = engine;
  this.make = make;



  this.conditions = function() {
  console.log("You have a "+ this.make + " with a " + this.engine + " and these " + this.tires + " tires.");
}
}

var new_car = new Car('Michellin', '4-cylinder', 'Honda');
console.log(new_car)

new_car.conditions()


// Release 3:A for...in statement can loop through keys and values of an object, but the loop is arbitrary. To loop through an array or object in a specific, one can use the i = 0 with i increasing by each enumeration or using the HasOwnProperty() method. You can also use Object.keys() to iterate through the keys.

// A constructor function is useful when generating multiple objects based on one blueprint, or in other words, when you have multiple sets of data that should be organized by the same keys. This does not allow flexibility for organizing data with different keys or in different orders