const initActiveNavbar = () => {
  const navbar = document.getElementById("myNavbar");
  const location = window.location.href;

  const btnHome = document.querySelector(".fas.fa-house-user");
  const btnSearch = document.querySelector(".fas.fa-search");
  const btnFav = document.querySelector(".fas.fa-heart");
  const btnLib = document.querySelector(".fas.fa-book-reader");

  if (location == "http://localhost:3000/" || location == "https://www.readtoremember.xyz/") {
    btnHome.className += " active";
  }
  if (location == "http://localhost:3000/highlights" || location == "https://www.readtoremember.xyz/highlights") {
    btnSearch.className += " active";
  }
  if (location == "http://localhost:3000/highlights/favorites" || location == "https://www.readtoremember.xyz/highlights/favorites") {
    btnFav.className += " active";
  }
  if (location == "http://localhost:3000/sources/library" || location == "https://www.readtoremember.xyz/sources/library") {
    btnLib.className += " active";
  }
}

export { initActiveNavbar };


/*
const initActiveSourceNavigation = () => {
  const navigation = document.getElementById("sourceNavigation");
  // Get all buttons
  const btns = document.querySelectorAll('a.link-library');
  console.log(btns);

  // Loop through the buttons and add the active class to the current/clicked button
  for (let i = 0; i < btns.length; i++) {
    btns[i].addEventListener("click", function(e) {
      e.preventDefault(); //active class works, links don't
      let current = document.getElementsByClassName("actives");
      console.log(current);
      current[0].className = current[0].className.replace(" actives", "");
      this.className += " actives";
     //current.classList.remove("actives"); //className = current.className.replace(" active", "");
    // this.classList.add("actives")
      console.log(this);
    });
  }
}

export { initActiveSourceNavigation };
*/
