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

  const indices = Array.prototype.map.call(cards, function(a) { return parseInt(a.dataset.cardId.replace(/-(false|true)-[0-9]+/, ''), 10) - 1 });
  console.log(indices)

  let ids = Array.prototype.map.call(cards, function(a) { return a.dataset.cardId.replace(/[0-9]-(false|true)-/, '') });
  console.log(ids)
  let myBool = Array.prototype.map.call(cards, function(a) { return JSON.parse(a.dataset.cardId.replace(/[0-9-[0-9]+/g, '')) });
  console.log(myBool)


  // get transform property
  const docStyle = document.documentElement.style;
  const transformProp = typeof docStyle.transform == 'string' ?
    'transform' : 'WebkitTransform';

  const firstId = flkty.selectedElement.dataset.cardId.replace(/[0-9]-(false|true)-/, '');
  const firstFav = flkty.selectedElement.dataset.cardId.replace(/[0-9-[0-9]+/g, '');
  const firstIndex = flkty.selectedElement.dataset.cardId.replace(/-(false|true)-[0-9]+/, '');

  console.log(firstId + ' bool: ' + firstFav + ' index: ' + parseInt(firstIndex, 10) );
  // dwnld links + export
  const myDownload = document.getElementById(`dwnld`);
  myDownload.download = `flashcard_${firstId}.md`;
  const exportLink = document.querySelector('#export');

 // export on click
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

  // change heart on click (first one)
  /*
  favLink.addEventListener('click', changeHeart);
  unfavLink.addEventListener('click', changeHeart);

  function changeHeart() {

    if (myBool[parseInt(firstIndex, 10)-1]) {
      myBool[parseInt(firstIndex, 10)-1] = false;
      favLink.style.display = 'inherit';
      unfavLink.style.display = 'none';
    } else {
      myBool[parseInt(firstIndex, 10)-1] = true;
      favLink.style.display = 'none';
      unfavLink.style.display = 'inherit';
    }
    console.log(myBool);
  } */

  flkty.on('scroll', function() {
    const currentId = flkty.selectedElement.dataset.cardId.replace(/[0-9]-(false|true)-/, '');
    console.log(currentId);
    const myFav = flkty.selectedElement.dataset.cardId.replace(/[0-9-[0-9]+/g, '');
    console.log(myFav);

    myDownload.download = `flashcard_${currentId}.md`;

    //changeHearts on scrolling  // do this with array of booleans and index
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

    //const deleteLink = document.querySelector('#del');
    //deleteLink.href = `${currentId}`;
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


