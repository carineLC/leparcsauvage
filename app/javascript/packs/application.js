import 'bootstrap/dist/js/bootstrap';
import 'bootstrap';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initUpdateNavbarOnScroll, hideSublinksOnClickHamburger, hideSublinks } from '../components/navbar';
import { initMapbox } from '../plugins/init_mapbox';

initUpdateNavbarOnScroll();
hideSublinksOnClickHamburger();
hideSublinks();
initMapbox();



