const addressInput = document.getElementById('meetup_location');

if (addressInput) { const places = require('places.js'); const placesAutocomplete = places({ container: addressInput }); }