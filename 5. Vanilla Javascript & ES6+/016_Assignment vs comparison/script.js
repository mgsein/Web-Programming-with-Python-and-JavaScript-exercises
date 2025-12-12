/**
 * Assignment vs comparison
 * @link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators#Relational_operators
 */

let a = "Five";
// let a = 5;
// let b = 4;
// let b = "5";
let b = "five";

console.log(`let a: ${a} (${typeof a})`);
console.log(`let b: ${b} (${typeof b})`);

// if (a === b) {
if (a == b) {
  console.log(`Match! let a and let b are the same value.`);
} else {
  console.error(`No match: let a and let b are NOT same value.`);
}
