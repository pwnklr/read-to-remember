const initActiveNavbar = () => {
  const navbar = document.getElementById("myNavbar");

  if (navbar) {
    const location = window.location.href;

    const btnHome = document.querySelector(".fas.fa-play-circle");
    const btnSearch = document.querySelector(".fas.fa-search");
    const btnFav = document.querySelector(".fas.fa-heart");
    const btnLib = document.querySelector(".fas.fa-book");

    switch (location) {
      case "https://www.readtoremember.xyz/":
      btnHome.className += " active";
      break;
      case "https://www.readtoremember.xyz/highlights":
      btnSearch.className += " active";
      break;
      case "https://www.readtoremember.xyz/highlights/favorites":
      btnFav.className += " active";
      break;
      case "https://www.readtoremember.xyz/sources/library":
      btnLib.className += " active";
      break;
      case "https://www.readtoremember.xyz/sources/library?select=1":
      btnLib.className += " active";
      break;
      case "https://www.readtoremember.xyz/sources/library?select=2":
      btnLib.className += " active";
      break;
      case "https://www.readtoremember.xyz/sources/library?select=3":
      btnLib.className += " active";
      break;
      case "https://www.readtoremember.xyz/sources/library?select=4":
      btnLib.className += " active";
      break;
      case "https://www.readtoremember.xyz/sources/articles":
      btnLib.className += " active";
      break;
      case "https://www.readtoremember.xyz/sources/articles?select_a=1":
      btnLib.className += " active";
      break;
      case "https://www.readtoremember.xyz/sources/articles?select_a=2":
      btnLib.className += " active";
      break;
      case "https://www.readtoremember.xyz/sources/articles?select_a=3":
      btnLib.className += " active";
      break;
      case "https://www.readtoremember.xyz/sources/articles?select_a=4":
      btnLib.className += " active";
      break;
      case "https://www.readtoremember.xyz/highlights/all_tags":
      btnLib.className += " active";
      break;
      case "https://www.readtoremember.xyz/highlights/all_tags?select_t=1":
      btnLib.className += " active";
      break;
      case "https://www.readtoremember.xyz/highlights/all_tags?select_t=2":
      btnLib.className += " active";
    }
  }
}

export { initActiveNavbar };
