/**
 * Working with arrays
 * @link https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/Arrays
 */

let item = "flashlight";

const collection = ["Piggy", item, 5, true];

// console.log(collection);
// console.log(collection.length);
// console.log(collection[1]);

collection[2] = "camera";
collection[collection.length] = "new item";
console.log(collection);

collection[9] = "in the end";
console.log(collection[8]);
console.log(collection);
