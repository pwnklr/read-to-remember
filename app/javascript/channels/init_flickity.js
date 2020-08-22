// carousel
const initFlickity = () => {
  const carousel = document.querySelector('.carousel');
  const flkty = new Flickity( carousel, {
    // you can flick forever, man.
    freeScroll: false,
    contain: true,
    // disable previous & next buttons and dots
    prevNextButtons: false,
    pageDots: false,
    hash: true
  });
  const cards = carousel.querySelectorAll('.carousel-cell');
  console.log(cards);
  // get transform property
  const docStyle = document.documentElement.style;
  const transformProp = typeof docStyle.transform == 'string' ?
    'transform' : 'WebkitTransform';
  flkty.on('scroll', function() {
    const currentId = flkty.selectedElement.dataset.cardId;

    const favLink = document.querySelector('#fav');
    if (favLink) {
      favLink.href = `${currentId}/fav`
    } else {
      const unfavLink = document.querySelector('#unfav');
      unfavLink.href = `${currentId}/unfav`
    }


    const editLink = document.querySelector('#edit');
    editLink.href = `highlights/${currentId}/edit` // add correct url route here (using rails routes to see what it is)
    const deleteLink = document.querySelector('#del');
    deleteLink.href = `highlights/${currentId}/` //




    window.location.hash = '#' + currentId;
    flkty.slides.forEach( function( slide, i ) {
      const card = cards[i];
      const x = ( slide.target + flkty.x ) * -2/3;
      card.style[ transformProp ] = 'translateX(' - x  + 'vw)';
    });
  });
}



export { initFlickity };

