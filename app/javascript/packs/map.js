import "bootstrap";
//= require bootstrap-modal

import initMap from '../components/map.js'
const mapElement = document.getElementById('map');
initMap(mapElement);
console.log("Hello from app/javascript/packs/map.js!");

//This is to change collor when you scrool but we didn't like it!!
//import { toggleNavbarBackground } from '../components/navbar';
//toggleNavbarBackground();
