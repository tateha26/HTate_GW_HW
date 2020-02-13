



var mapboxLayer = L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={mapbox_key}', {
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 18,
    id: 'mapbox/streets-v11',
    accessToken: process.env.mapbox_key,
}).addTo(mymap);

// var geojsonFeatureCollection = {
//     "type": "FeatureCollection",
//     "metadata": {
//         "generated": 
//     }
// }

// var geojsonFeature = {
//     "type": "Feature",

// }

var mymap = L.map('mapid').setView([51.505, -0.09], 13);
    mapboxLayer.addTo(mymap)

d3.json("https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/significant_month.geojson")
    .