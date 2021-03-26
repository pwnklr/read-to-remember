// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

// flickity
// import { initFlickity } from '../channels/init_flickity';

// vanilla
import { initCarousel } from '../components/init_carousel';
import { initActiveNavbar } from '../components/init_active_navbar';
import { initActiveSourceNavigation } from '../components/init_active_source_navigation';
import { initDomImage } from '../components/init_dom_image';
import { initFavs } from '../components/init_favs';
import { initAlert, closeAlert, closeEveryAlert } from '../components/init_alert';
import { initDownloadBookAll, initDownloadBookSelect } from '../components/init_download_book';



document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();

  initActiveNavbar();
  initActiveSourceNavigation();
  initDomImage();
  initFavs();
  initAlert();
  closeAlert();
  closeEveryAlert();
  initDownloadBookAll();
  initDownloadBookSelect();

  // vanilla
  initCarousel();

  // flickity
  /*
  const carousel = document.getElementById('myCarousel');
  if (carousel) {
    initFlickity();
  }  */
});
