const initActiveNavbar = () => {
  const navbar = document.getElementById("myNavbar");
  const location = window.location.href;

  const btnHome = document.querySelector(".fas.fa-house-user");
  const btnSearch = document.querySelector(".fas.fa-search");
  const btnFav = document.querySelector(".fas.fa-heart");
  const btnLib = document.querySelector(".fas.fa-book-reader");

  switch (location) {
    case "http://localhost:3000/" || "https://www.readtoremember.xyz/":
    btnHome.className += " active";
    break;
    case "http://localhost:3000/highlights" || "https://www.readtoremember.xyz/highlights":
    btnSearch.className += " active";
    break;
    case "http://localhost:3000/highlights/favorites" || "https://www.readtoremember.xyz/highlights/favorites":
    btnFav.className += " active";
    break;
    case "http://localhost:3000/sources/library" || "https://www.readtoremember.xyz/sources/library":
    btnLib.className += " active";
    break;
    case "http://localhost:3000/sources/articles" || "https://www.readtoremember.xyz/sources/articles":
    btnLib.className += " active";
   }
}

export { initActiveNavbar };
