import "bootstrap";
import './application.css';
//= require bootstrap-modal

import { loadDynamicBannerText } from '../components/banner';
const homePage = document.querySelector('.pages.home');
if (homePage) {
  loadDynamicBannerText();
}

import initMap from '../components/map.js'
const mapElement = document.getElementById('map');
initMap(mapElement);
console.log("Hello from app/javascript/packs/map.js!");

import { autocomplete } from '../components/autocomplete';
autocomplete();

import { toggleDateInputs } from '../components/renting_form';
toggleDateInputs();


//This is to change collor when you scrool but we didn't like it!!
//import { toggleNavbarBackground } from '../components/navbar';
//toggleNavbarBackground();
