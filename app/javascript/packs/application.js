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


//This is to change collor when you scrool but we didn't like it!!
//import { toggleNavbarBackground } from '../components/navbar';
//toggleNavbarBackground();
