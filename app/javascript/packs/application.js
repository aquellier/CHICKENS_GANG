import "bootstrap";
import './application.css';
//= require bootstrap-modal

import { loadDynamicBannerText } from '../components/banner';
const homePage = document.querySelector('.pages.home');
if (homePage) {
  loadDynamicBannerText();
}

import { toggleDateInputs } from '../components/renting_form';
toggleDateInputs();

import initMap from '../components/map.js'
import { autocomplete } from '../components/autocomplete.js'
const mapElement = document.getElementById('map');
initMap(mapElement);
console.log("Hello from app/javascript/packs/application.js!");
