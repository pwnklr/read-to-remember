const initActiveNavbar = () => {
  const navbar = document.getElementById("myNavbar");
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
    case "https://www.readtoremember.xyz/sources/articles":
    btnLib.className += " active";
   }
}

export { initActiveNavbar };
