//https://cdnjs.cloudflare.com/ajax/libs/d3/5.5.0/d3.js

// const a = document.querySelector(".canva");
// const b = d3.select(".canva");
// console.log(a, b);

// fetch('https://jsonplaceholder.typicode.com/todos/1')
//     .then(response = samples.json())
//     .then(json => console.log(json))

// //This code below is to test seeing a json path on the internet.
// d3.json('https://jsonplaceholder.typicode.com/todos/1')
//     .then(data =>{
//         console.log(data);
//         //code here to actually draw elements on screen
//     })

function organizeMetadata(sample) {}
    d3.json("samples.json").then(data => {
    var metadata = data.metadata;
    // Filter the data for the object with the desired sample number
    var resultArray = metadata.filter(sampleObj => sampleObj.id == sample);
    var result = resultArray[0];
    // Use d3 to select the panel with id of `#sample-metadata`
    var section = d3.select("sample-metadata");

    section.html("");

    // Use `Object.entries` to add each key and value pair to the panel
    // Hint: Inside the loop, you will need to use d3 to append new
    // tags for each key-value in the metadata.

    Object.entries(result).forEach(([key, value]) => {
        section.append("h6").text(`${key.toUpperCase()}: ${value}`);
    });

    var names = data.names;
    var samples = data.samples;

        // Build a Bubble Chart
    var bubbleLayout = {
      title: "Bacteria Cultures Per Sample",
      margin: { t: 0 },
      hovermode: "closest",
      xaxis: { title: "OTU ID" },
      margin: { t: 30}
    };
    var bubbleData = [
      {
        x: otu_ids,
        y: sample_values,
        text: otu_labels,
        mode: "markers",
        marker: {
          size: sample_values,
          color: otu_ids,
          colorscale: "Earth"
        }
      }
    ];

    Plotly.newPlot("bubble", bubbleData, bubbleLayout);

    var yticks = otu_ids.slice(0, 10).map(otuID => `OTU ${otuID}`).reverse();
    var barData = [
      {
        y: yticks,
        x: sample_values.slice(0, 10).reverse(),
        text: otu_labels.slice(0, 10).reverse(),
        type: "bar",
        orientation: "h",
      }
    ];

    var barLayout = {
      title: "Top 10 Bacteria Cultures Found",
      margin: { t: 30, l: 150 }
    };

    Plotly.newPlot("bar", barData, barLayout);
  });

  function init() {
    // Grab a reference to the dropdown select element
    var selector = d3.select("#selDataset");

    // Use the list of sample names to populate the select options
    d3.json("samples.json").then(data => {
      var sampleNames = data.names;

      sampleNames.forEach(sample => {
        selector
          .append("option")
          .text(sample)
          .property("value", sample);
      });

      // Use the first sample from the list to build the initial plots
      var firstSample = sampleNames[0];
      buildCharts(firstSample);
      organizeMetadata(firstSample);
    });
  }

  function optionChanged(newSample) {
    // Fetch new data each time a new sample is selected
    buildCharts(newSample);
    organizeMetadata(newSample);
  }

  // Initialize the dashboard
  init();


    // console.log(data);
