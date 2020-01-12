// from data.js
var tableData = data
console.log(data);

var tbody = d3.select("tbody");

function buildTable(data) {
    tbody.html("");
}
whatevs = d3.select("#ufo-table")
    .selectAll("table-head")
    .data(data)
    .enter()
    .append("tr")
    .html(function(d) {
        return `<td>${d.datetime}</td>
        <td>${d.city}</td>
        <td>${d.state}</td>
        <td>${d.country}</td>
        <td>${d.shape}</td>
        <td>${d.duration}</td>
        <td>${d.comments}</td>`;
  });

console.log(whatevs);

function myFunction() {
        input = document
        .getElementbyId(whatevs)
        .onclick();
        filter = input.value
        .toUpperCase("#ufo-table");
        tr = table
        .getElementsByTagName("tr");
        for (x = 0; x < tr.length; x++) {
            td = tr[x].getElementsByTagName("td")[0];
            if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf (filter) > -1) {
                    tr[x].style.display = "";
                }
            }
        }
    }

    myFunction();

// //whatevs.forEach(function(whatevs) {
//    var row = tbody.append("tr");
//    row.append("td").text(whatevs);
// });



// d3.select("#datetime.form-control")
//     .on("keyup", function() {
//          text = this.value.trim();

//          var searchResults = data.map(function(d) {
//              var regex = new RegExp("^" + text + ".*", "i");
//              if (regex.test(d.datetime)[0]);
//          }
// })

//         searchResults = searchResults.filter(function(d){
//             return d != undefined;
//         })

//         data = searchResults.map(function(_d) {
//             return data.filter(function(d) {
//                  return `<li>${d.datetime}</li>
//                      <li>${d.state}</li>
//                      <li>${d.country}</li>
//                      <li>${d.shape}</li>
//                      <li>${d.duration}</li>
//                      <li>${d.comments}</li>`
// });


// // var filter = d3.select("li.filter.list-group-item") {
// //     .append(input)

// //    filter = d3.select("#ufo-table")
// //     .selectAll()
// //     .
// //     d3.select("#filter-btn") {}
// //     "#datetime.form-control".searchBar 

// // }
// // //var filter = {};

// // // function filtersucks() {
// // //     d3.select(this)
// // //     .filter(whatevs);

// // // function click() {
// // //     nodes.filter(function(d){
// // //         return !()
// // //     }
// //     .onclick
// //     .

// //     function filterPopular(){
// //   tempNodes = nodes.filter(function(d){
// //     return !('popularity' in d) || d.popularity>5;
// //   });
// //   update(tempNodes);


// // var filters = {};
// // function updateFilters() {
// //   // Save the element, value, and id of the filter that was changed
// //   var changedElement = d3.select(this).select("input");
// //   var elementValue = changedElement.property("value");
// //   var filterId = changedElement.attr("id");
// //   // If a filter value was entered then add that filterId and value
// //   // to the filters list. Otherwise, clear that filter from the filters object
// //   if (elementValue) {
// //     filters[filterId] = elementValue;
// //   }
// //   else {
// //     delete filters[filterId];
// //   }
// //   // Call function to apply all filters and rebuild the table
// //   filterTable();
// // }
// // function filterTable() {
// //   // Set the filteredData to the tableData
// //   let filteredData = tableData;
// //   // Loop through all of the filters and keep any data that
//   // matches the filter values
//   Object.entries(filters).forEach(([key, value]) => {
//     filteredData = filteredData.filter(row => row[key] === value);
//   });
//   // Finally, rebuild the table using the filtered Data
//   buildTable(filteredData);
// }
// // Attach an event to listen for changes to each filter
// d3.selectAll(".filter").on("change", updateFilters);
// // Build the table when the page loads
/// buildTable(tableData)


