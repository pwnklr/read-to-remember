const initActiveSourceNavigation = () => {
  const navigation = document.getElementById("sourceNavigation");
  const location = window.location.href;

  const btnBooks = document.querySelector(".link-library.books");
  const btnArticles = document.querySelector(".link-library.articles");
  const btnTag = document.querySelector(".link-library.tag");

  switch (location) {
    case "https://www.readtoremember.xyz/sources/library":
    btnBooks.className += " active-s";
    break;
    case "https://www.readtoremember.xyz/sources/library?select=1":
    btnBooks.className += " active-s";
    break;
    case "https://www.readtoremember.xyz/sources/library?select=2":
    btnBooks.className += " active-s";
    break;
    case "https://www.readtoremember.xyz/sources/library?select=3":
    btnBooks.className += " active-s";
    break;
    case "https://www.readtoremember.xyz/sources/library?select=4":
    btnBooks.className += " active-s";
    break;
    case "https://www.readtoremember.xyz/sources/articles":
    btnArticles.className += " active-s";
    break;
    case "https://www.readtoremember.xyz/sources/articles?select_a=1":
    btnArticles.className += " active-s";
    break;
    case "https://www.readtoremember.xyz/sources/articles?select_a=2":
    btnArticles.className += " active-s";
    break;
    case "https://www.readtoremember.xyz/sources/articles?select_a=3":
    btnArticles.className += " active-s";
    break;
    case "https://www.readtoremember.xyz/sources/articles?select_a=4":
    btnArticles.className += " active-s";
    break;
    case "https://www.readtoremember.xyz/highlights/all_tags":
    btnTag.className += " active-s";
   }
}

export { initActiveSourceNavigation };
