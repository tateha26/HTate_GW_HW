
console.log(process.env);

const quake_url =
  "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/significant_month.geojson";
const quake_url_response = await fetch(quake_url);
const quake_data = await quake_url_response.

// Use the list of sample names to populate the select options
d3.json("https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/significant_month.geojson")
    .then(data => {
      var quake_data = data.names;

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