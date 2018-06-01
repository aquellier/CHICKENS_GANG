import "bootstrap";

import './application.css'
import initMap from '../components/map.js'
import { toggleDateInputs } from '../components/renting_form';


const mapElement = document.getElementById('map');
initMap(mapElement);
console.log("Hello from app/javascript/packs/map.js!");

toggleDateInputs();


//This is to change collor when you scrool but we didn't like it!!
//import { toggleNavbarBackground } from '../components/navbar';
//toggleNavbarBackground();
