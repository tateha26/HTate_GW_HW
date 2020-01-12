// Use D3 to select the table body
var tbody = d3.select("tbody");

// Use D3 to select the table
var table = d3.select("table");

// Use D3 to set the table class to `table table-striped`
table.attr("class", "table table-striped");

// Loop through an array of grades and build the entire table body from scratch
var grades = [["Malcolm", 80], ["Zoe", 85], ["Kaylee", 99], ["Simon", 99], ["Wash", 79]];

//Appending one table row `tr` to the table body.

grades.forEach(function(x) {
    var row = tbody.append("tr");

//Appending each row with the previously defined grades variable to the student name header.
row.append("td").text(x[0]);

//Appending each row with the previously defined grades variable to the student grade header.
row.append("td").text(x[1]);
});

