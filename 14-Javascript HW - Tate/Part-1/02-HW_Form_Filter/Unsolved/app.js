// Assign the data from `data.js` to a descriptive variable
var people = data;

// Select the button
var button = d3.select("#button");

// Complete the click handler for the form
button.on("click", function() {
  console.log("Submit");
  console.log(d3.event.target);
});

  // Select the input element and get the raw HTML node
button.on("click", function() {
  d3.select("data.js").on("bloodType", math.mean("bloodType"),
  d3.select("data.js").on("bloodType", math.median("bloodType"),
  d3.select("data.js").on("bloodType", math.mode("bloodType"),
  d3.select("data.js").on("bloodType", math.variance("bloodType"),
  d3.select("data.js").on("bloodType", math.std("bloodType")
 });

  // Get the value property of the input element

  // Use the form input to filter the data by blood type

  // BONUS: Calculate summary statistics for the age field of the filtered data


  // First, create an array with just the age values

  // Next, use math.js to calculate the mean, median, mode, var, and std of the ages

  // Finally, add the summary stats to the `ul` tag
});