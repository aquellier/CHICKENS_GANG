import "bootstrap";
import initMap from '../components/map.js'
import { autocomplete } from '../components/autocomplete.js'
const mapElement = document.getElementById('map');
initMap(mapElement);
console.log("Hello from app/javascript/packs/application.js!");
import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();

