// carousel
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


  let ids = Array.prototype.map.call(cards, function(a) { return a.dataset.cardId.replace(/(false|true)-/, '') });
  console.log(ids)
  let myBool = Array.prototype.map.call(cards, function(a) { return JSON.parse(a.dataset.cardId.replace(/-[0-9]+/, '')) });
  console.log(myBool)


  // get transform property
  const docStyle = document.documentElement.style;
  const transformProp = typeof docStyle.transform == 'string' ?
    'transform' : 'WebkitTransform';

  const firstId = flkty.selectedElement.dataset.cardId.replace(/(true|false)-/, '');
  console.log(firstId);
  const firstFav = flkty.selectedElement.dataset.cardId.replace(/-[0-9]+/, '');
  const myDownload = document.getElementById(`dwnld`);
  myDownload.download = `flashcard_${firstId}.md`;
  const exportLink = document.querySelector('#export');

  exportLink.addEventListener('click', showAlert);
  function showAlert() {
    setTimeout(function(){
      myDownload.click();
      document.getElementById('myAlert').style.display = 'inherit';
    }, 900);
    const clsBtn = document.getElementById('clsBtn');
    clsBtn.addEventListener('click', closeIt);
    setTimeout(function() {
      clsBtn.click();
    }, 4500);
  }
  function closeIt() {
    document.getElementById('myAlert').style.display = 'none';
  }

  // set first card hearts
  const favLink = document.querySelector('#fav');
  const unfavLink = document.querySelector('#unfav');
    if (JSON.parse(firstFav)) {
      unfavLink.href = `${firstId}/unfav`;
      favLink.style.display = 'none';
      unfavLink.style.display = 'inherit';
    } else {
      favLink.href = `${firstId}/fav`;
      unfavLink.style.display = 'none';
      favLink.style.display = 'inherit';
    }


  flkty.on('scroll', function() {
    const currentId = flkty.selectedElement.dataset.cardId.replace(/(true|false)-/, '');
    console.log(currentId);
    const myFav = flkty.selectedElement.dataset.cardId.replace(/-[0-9]+/, '');
    console.log(myFav);

    myDownload.download = `flashcard_${currentId}.md`;

    //changeHearts on scrolling
    if (JSON.parse(myFav)) {
      unfavLink.href = `${currentId}/unfav`;
      favLink.style.display = 'none';
      unfavLink.style.display = 'inherit';
    } else {
      favLink.href = `${currentId}/fav`;
      unfavLink.style.display = 'none';
      favLink.style.display = 'inherit';
   }

    const editLink = document.querySelector('#edit');  //works
    editLink.href = `${currentId}/edit`;
    const deleteLink = document.querySelector('#del'); //works but not remote
    deleteLink.href = `${currentId}`;
    // no destroy!!
    exportLink.href = `${currentId}/export`;

    window.location.hash = '#' + currentId;
    flkty.slides.forEach( function( slide, i ) {
      const card = cards[i];
      const x = ( slide.target + flkty.x ) * -2/3;
      card.style[ transformProp ] = 'translateX(' - x  + 'vw)';
    });
  });


  exportLink.addEventListener('click', showAlert);

  function showAlert() {
    const myDownload = document.getElementById('dwnld');
    setTimeout(function(){
      myDownload.click();
      document.getElementById('myAlert').style.display = 'inherit';
    }, 900);
    const clsBtn = document.getElementById('clsBtn');
    clsBtn.addEventListener('click', closeIt);
    setTimeout(function() {
      clsBtn.click();
    }, 4500);
  }
  function closeIt() {
    document.getElementById('myAlert').style.display = 'none';
  }


}

// download - check error

export { initFlickity };


