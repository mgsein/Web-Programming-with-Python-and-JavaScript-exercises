/**
 * Passing data to functions through parameters.
 * @link https://developer.mozilla.org/en-US/docs/Glossary/Function
 */

// const tipCalculator = (sum, percentage, currency, prefix) => {
const tipCalculator = () => {
  let sum = 29.85;
  let percentage = 18;
  let tip = sum * (percentage / 100);
  let total = sum + tip;
  console.log(`
      Sum before tip: ${sum}
      Tip percentage: ${percentage}%
      Tip:            ${tip.toFixed(2)}
      Total:          ${total.toFixed(2)}
    `);
  // if (prefix) {
  //   console.log(`
  //     Sum before tip: ${currency}${sum}
  //     Tip percentage: ${percentage}%
  //     Tip:            ${currency}${tip.toFixed(2)}
  //     Total:          ${currency}${total.toFixed(2)}
  //   `);
  // } else {
  //   console.log(`
  //     Sum before tip: ${sum}${currency}
  //     Tip percentage: ${percentage}%
  //     Tip:            ${tip.toFixed(2)}${currency}
  //     Total:          ${total.toFixed(2)}${currency}
  //   `);
  // }
  // };
};
tipCalculator();
// tipCalculator(29.95, 18, "kr", true);
