import "bootstrap";
import './application.css';

import { loadDynamicBannerText } from '../components/banner';
const homePage = document.querySelector('.pages.home');
if (homePage) {
  loadDynamicBannerText();
}

import { toggleDateInputs } from '../components/renting_form';
toggleDateInputs();
