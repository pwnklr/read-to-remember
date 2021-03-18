const initFavs = () => {
  const favs = document.querySelectorAll('.card.card-adjusted > div.icons > div.sent > p:nth-child(1) > a > i');
  console.log(favs);
  if(favs) {
    for(let i = 0; i < favs.length; i++) {
      favs[i].addEventListener('click', function() {
        if (location == 'http://localhost:3000/highlights/favorites') {
          const id = favs[i].id.replace('f-', '');
          document.getElementById('card-' + id).remove();
        } else {
          if (favs[i].classList.contains('far')) {
            favs[i].classList.remove('far');
            favs[i].classList.add('fas');
            favs[i].title = 'Unfavorite';
            favs[i].style.color = '#555555';
          } else {
            favs[i].classList.remove('fas');
            favs[i].classList.add('far');
            favs[i].title = 'Favorite';
            favs[i].style.color = '#aaa';
          }
        }
      });
    }
  }
}

export { initFavs };
