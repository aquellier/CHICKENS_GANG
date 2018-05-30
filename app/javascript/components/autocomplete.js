function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var chickensgangAddress = document.getElementById('chickens_gang_address');

    if (chickensgangAddress) {
      var autocomplete = new google.maps.places.Autocomplete(chickensgangAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(chickensgangAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
