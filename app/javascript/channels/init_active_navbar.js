
const initActiveNavbar = () => {
  const navbar = document.getElementById("myNavbar");
  // Get all buttons
  const btns = navbar.querySelectorAll("i.fas");
  console.log(btns);
  let checkvalue= window.location;
  console.log(checkvalue);

  // Loop through the buttons and add the active class to the current/clicked button
  for (let i = 0; i < btns.length; i++) {
    btns[i].addEventListener("click", function() {
      //e.preventDefault(); // active classes works, links no :(
      let checkvalue= window.location;
       console.log(checkvalue);

      let current = document.getElementsByClassName("active");

     const wvalue = this.className.split(" ")[0];

     window.location = 'http://localhost:3000/'+ wvalue;

   console.log(current);
      current[0].className = current[0].className.replace(" active", "");
      this.className += " active";
     // current.classList.remove("active"); //className = current.className.replace(" active", "");
     // this.classList.add("active")
      console.log(this);
    });
  }
}

export { initActiveNavbar };


/*
const initActiveSourceNavigation = () => {
  const navigation = document.getElementById("sourceNavigation");
  // Get all buttons
  const btns = navigation.querySelectorAll('a.link-library');
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
