const initActiveSourceNavigation = () => {
  const navigation = document.getElementById("sourceNavigation");
  const location = window.location.href;

  const btnBooks = document.querySelector(".link-library.books");
  const btnArticles = document.querySelector(".link-library.articles");

  switch (location) {
    case "http://localhost:3000/sources/library" || "https://www.readtoremember.xyz/sources/library":
    btnBooks.className += " active-s";
    break;
    case "http://localhost:3000/sources/articles" || "https://www.readtoremember.xyz/sources/articles":
    btnArticles.className += " active-s";
   }
}

export { initActiveSourceNavigation };
