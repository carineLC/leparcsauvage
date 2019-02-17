import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
      center: [0.426193, 45.36406],
      attributionControl: false,
      zoom: 10
    });
    map.addControl(new mapboxgl.NavigationControl());
    new mapboxgl.Marker({ color: '#74b49b' })
        .setLngLat([0.426193, 45.36406])
        .addTo(map);
  }
};

export { initMapbox };
