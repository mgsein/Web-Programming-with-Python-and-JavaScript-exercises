/**
 * Working with array methods
 * @link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array#Instance_methods
 */

let backpackContents = ["piggy", "headlamp", "pen"];

// backpackContents.push("pencil", 5);
// backpackContents.unshift("pencil", 5);
// backpackContents.shift();
// backpackContents.pop();
// console.log(backpackContents);

// backpackContents.forEach(function (item) {
//   item = `<li>${item}</li>`;
//   console.log(item);
// });
// console.log(backpackContents);

let longItems = backpackContents.find(function (item) {
  if (item.length >= 3) {
    return item;
  }
});
console.log("longItems:", longItems);
console.log(backpackContents);
