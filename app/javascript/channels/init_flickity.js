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

  let ids = Array.prototype.map.call(cards, function(a) { return a.dataset.cardId.replace(/[0-9]-(false|true)-/, '') });
  console.log(ids)
  let myBool = Array.prototype.map.call(cards, function(a) { return JSON.parse(a.dataset.cardId.replace(/[0-9-[0-9]+/g, '')) });
  console.log(myBool)

  // get transform property
  const docStyle = document.documentElement.style;
  const transformProp = typeof docStyle.transform == 'string' ?
    'transform' : 'WebkitTransform';

  // dwnld links + export
  const myDownload = document.getElementById(`dwnld`);
  myDownload.download = `flashcard_${ids[0]}.md`;
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

    if (myBool[0]) {
      unfavLink.href = `${ids[0]}/unfav`;
      favLink.style.display = 'none';
      unfavLink.style.display = 'inherit';
    } else {
      favLink.href = `${ids[0]}/fav`;
      unfavLink.style.display = 'none';
      favLink.style.display = 'inherit';
    }

  // change heart on click (first one)
  favLink.addEventListener('click', changeHeart);
  unfavLink.addEventListener('click', changeHeart);

   const currentId = flkty.selectedElement.dataset.cardId.replace(/[0-9]-(false|true)-/, '');
    console.log(currentId);
    const myFav = flkty.selectedElement.dataset.cardId.replace(/[0-9-[0-9]+/g, '');
    console.log(myFav);
    const currentIndex = flkty.selectedElement.dataset.cardId.replace(/-(false|true)-[0-9]+/, '');

  function changeHeart() {

    if (myBool[parseInt(currentIndex, 10)-1]) {
      myBool[parseInt(currentIndex, 10)-1] = false;
      favLink.style.display = 'inherit';
      unfavLink.style.display = 'none';
    } else {
      myBool[parseInt(currentIndex, 10)-1] = true;
      favLink.style.display = 'none';
      unfavLink.style.display = 'inherit';
    }
    console.log(myBool);
  }





  flkty.on('scroll', function() {

      const currentId = flkty.selectedElement.dataset.cardId.replace(/[0-9]-(false|true)-/, '');
    //console.log(currentId);
    const myFav = flkty.selectedElement.dataset.cardId.replace(/[0-9-[0-9]+/g, '');
    //console.log(myFav);
    const currentIndex = flkty.selectedElement.dataset.cardId.replace(/-(false|true)-[0-9]+/, '');

    myDownload.download = `flashcard_${currentId}.md`;

    //changeHearts on scrolling  // do this with array of booleans and index
    if (myBool[parseInt(currentIndex, 10)-1]) {
      unfavLink.href = `${currentId}/unfav`;
      favLink.style.display = 'none';
      unfavLink.style.display = 'inherit';
    } else {
      favLink.href = `${currentId}/fav`;
      unfavLink.style.display = 'none';
      favLink.style.display = 'inherit';
   }

    favLink.addEventListener('click', changeHeart);
    unfavLink.addEventListener('click', changeHeart);

    function changeHeart() {

      if (myBool[parseInt(currentIndex, 10)-1]) {
        myBool[parseInt(currentIndex, 10)-1] = false;
        favLink.style.display = 'inherit';
        unfavLink.style.display = 'none';
      } else {
        myBool[parseInt(currentIndex, 10)-1] = true;
        favLink.style.display = 'none';
        unfavLink.style.display = 'inherit';
      }
      console.log(myBool);
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


