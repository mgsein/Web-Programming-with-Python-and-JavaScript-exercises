/**
 * Scope and the var statement
 * @link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/var
 */

var color = "purple";
// let color = "purple";
document.querySelector(".left").style.backgroundColor = color;
document.querySelector(".left .color-value").innerHTML = color;

var color = "skyblue";
function headingColor() {
  let titleColor = "blue";
  // titleColor = "blue";
  document.querySelector(".title").style.color = titleColor;
  console.log("insideColor: ", titleColor);
}

headingColor();
// console.log("outsideColor: ", titleColor);
document.querySelector(".right").style.backgroundColor = color;
document.querySelector(".right .color-value").innerHTML = color;
