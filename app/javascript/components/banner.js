import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Get fresh eggs...", "Save the world."],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };


