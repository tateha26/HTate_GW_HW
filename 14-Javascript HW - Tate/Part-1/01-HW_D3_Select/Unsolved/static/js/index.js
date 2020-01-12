// Get a reference to the table body
var tbody = d3.select("tbody");

// Console.log the data from app.js
console.log(app);

// // Step 1: Loop Through `app` and console.log each allgrades object
// app.forEach(function(allgrades) {
//   console.log(allgrades);
// });

// // Step 2:  Use d3 to append one table row `tr` for each allgrades object
// // Don't worry about adding cells or text yet, just try appending the `tr` elements.
// app.forEach(function(allgrades) {
//   console.log(allgrades);
//   var row = tbody.append("tr");
// });

// // Step 3:  Use `Object.entries` to console.log each allgrades value
// app.forEach(function(allgrades) {
//   console.log(allgrades);
//   var row = tbody.append("tr");

//   Object.entries(allgrades).forEach(function([key, value]) {
//     console.log(key, value);
//   });
// });

// // Step 4: Use d3 to append 1 cell per allgrades value (weekday, date, high, low)
// app.forEach(function(allgrades) {
//   console.log(allgrades);
//   var row = tbody.append("tr");

//   Object.entries(allgrades).forEach(function([key, value]) {
//     console.log(key, value);
//     // Append a cell to the row for each value
//     // in the allgrades object
//     var cell = row.append("td");
//   });
// });

// // Step 5: Use d3 to update each cell's text with
// // allgrades values (weekday, date, high, low)
// app.forEach(function(allgrades) {
//   console.log(allgrades);
//   var row = tbody.append("tr");
//   Object.entries(allgrades).forEach(function([key, value]) {
//     console.log(key, value);
//     // Append a cell to the row for each value
//     // in the allgrades object
//     var cell = row.append("td");
//     cell.text(value);
//   });
// });

// BONUS: Refactor to use Arrow Functions!
app.forEach((allgrades) => {
  var row = tbody.append("tr");
  Object.entries(allgrades).forEach(([key, value]) => {
    var cell = row.append("td");
    cell.text(value);
  });
});