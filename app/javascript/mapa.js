function initMap() {
    const coords = document.getElementById("breweries");
    const city = {
      lat: -23.5293536,
      lng: -46.7778662
    };
    
    const map = new google.maps.Map(document.getElementById("map"), {
      zoom: 10,
      center: city
    });
    
  }
                      
  window.initMap = initMap;