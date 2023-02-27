function initMap() {
  const latlng = new google.maps.LatLng(<%= @favorite_place.latitude %>, <%= @favorite_place.longitude %>);
  const mapOptions = {
    zoom: 15,
    center: latlng,
  };
  const map = new google.maps.Map(document.getElementById("map"), mapOptions);
  const marker = new google.maps.Marker({
    position: latlng,
    map: map,
  });
}
