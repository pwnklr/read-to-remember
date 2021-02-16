const initCarousel = () => {
  const myCarousel = document.getElementById('slider');
  const sliderItems= document.getElementById('items');

  slide(myCarousel, sliderItems);
}


function slide(wrapper, items) {
  var posX1 = 0,
      posX2 = 0,
      posInitial,
      posFinal,
      threshold = 100,
      slides = items.getElementsByClassName('carousel-card'),
      slidesLength = slides.length,
      slideSize = items.getElementsByClassName('carousel-card')[0].offsetWidth,
      firstSlide = slides[0],
      lastSlide = slides[slidesLength - 1],
      cloneFirst = firstSlide.cloneNode(true),
      cloneLast = lastSlide.cloneNode(true),
      index = 0,
      allowShift = true;

  // Clone first and last slide
  items.appendChild(cloneFirst);
  items.insertBefore(cloneLast, firstSlide);
  wrapper.classList.add('loaded');

  // Mouse and Touch events
  items.addEventListener('mousedown', dragStart);
  // Touch events
  items.addEventListener('touchstart', dragStart);
  items.addEventListener('touchend', dragEnd);
  items.addEventListener('touchmove', dragAction);
  // Transition events
  items.addEventListener('transitionend', checkIndex);

  //vars
  let ids = Array.prototype.map.call(slides, function(a) { return a.id.replace(/(false|true)-/, '') });
  ids.shift();
  console.log(ids)
  let myBool = Array.prototype.map.call(slides, function(a) { return JSON.parse(a.id.replace(/-[0-9]+/, '')) });
  myBool.shift();
  console.log(myBool);

  const lastBools = document.getElementById('lastBools');
  lastBools.innerText = myBool;
  lastInx.innerText = index;

  const favLink = document.getElementById('fav');
  const unfavLink = document.getElementById('unfav');
  const editLink = document.getElementById('edit');
  const exportLink = document.getElementById('export');
  const delLink = document.getElementById('del');

  // init links
  if (myBool[index]) {
    unfavLink.href = `${ids[index]}/unfav`;
    favLink.style.display = 'none';
    unfavLink.style.display = 'inherit';
  } else {
    favLink.href = `${ids[index]}/fav`;
    unfavLink.style.display = 'none';
    favLink.style.display = 'inherit';
  }


  editLink.href = `${ids[index]}/edit`;
  exportLink.href = `${ids[index]}/export`;
  delLink.href = `${ids[index]}/`;


  function dragStart (e) {
    e = e || window.event;
    e.preventDefault();
    posInitial = items.offsetLeft;
    console.log('dragstart: ' + posInitial);

    if (e.type == 'touchstart') {
      posX1 = e.touches[0].clientX;
    } else {
      posX1 = e.clientX;
      document.onmouseup = dragEnd;
      document.onmousemove = dragAction;
    }
  }

  function dragAction (e) {
    e = e || window.event;

    if (e.type == 'touchmove') {
      posX2 = posX1 - e.touches[0].clientX;
      posX1 = e.touches[0].clientX;

    } else {
      posX2 = posX1 - e.clientX;
      posX1 = e.clientX;
    }
    items.style.left = (items.offsetLeft - posX2) + "px";
  }

  function dragEnd (e) {

    lastInx.innerText = index;

    posFinal = items.offsetLeft;
    if (posFinal - posInitial < -threshold) {
      shiftSlide(1, 'drag');
    } else if (posFinal - posInitial > threshold) {
      shiftSlide(-1, 'drag');
    } else {
      items.style.left = (posInitial) + "px";
    }

    document.onmouseup = null;
    document.onmousemove = null;
  }

  function shiftSlide(dir, action) {
    items.classList.add('shifting');

    if (allowShift) {
      if (!action) { posInitial = items.offsetLeft; }

      if (dir == 1) {
        items.style.left = (posInitial - slideSize) + "px";
        index++;
      } else if (dir == -1) {
        items.style.left = (posInitial + slideSize) + "px";
        index--;
      }
    };

    allowShift = false;
  }

  function checkIndex (){
    items.classList.remove('shifting');
    console.log(myBool);
    console.log(ids);
    console.log(index);
    console.log(ids[index]);


    if (index == -1) {
      items.style.left = -(slidesLength * slideSize) + "px";
      index = slidesLength - 1;
    }

    if (index == slidesLength) {
      items.style.left = -(1 * slideSize) + "px";
      index = 0;
    }

    allowShift = true;

    //update links
      if (myBool[index]) {
        unfavLink.href = `${ids[index]}/unfav`;
        favLink.style.display = 'none';
        unfavLink.style.display = 'inherit';
      } else {
        favLink.href = `${ids[index]}/fav`;
        unfavLink.style.display = 'none';
        favLink.style.display = 'inherit';
      }

      editLink.href = `${ids[index]}/edit`;
      exportLink.href = `${ids[index]}/export`;
      delLink.href = `${ids[index]}/`;
  }

  favLink.addEventListener('click', changeHeart);
  unfavLink.addEventListener('click', changeHeart);

  function changeHeart() {

    if (myBool[index] === true) {
      myBool[index] = false;
      favLink.style.display = 'inherit';
      unfavLink.style.display = 'none';
    } else {
      myBool[index] = true;
      favLink.style.display = 'none';
      unfavLink.style.display = 'inherit';
    }
    console.log(myBool);
    lastBools.innerText = myBool;
  }

  editLink.addEventListener('click', makeItWork);

  function makeItWork() {
    console.log('do smtng');

    // stop carousel do be able to write a note (works but not on last slide :/)
    items.removeEventListener('mousedown', dragStart);
    items.removeEventListener('touchstart', dragStart);
    items.removeEventListener('touchend', dragEnd);
    items.removeEventListener('touchmove', dragAction);
    items.removeEventListener('transitionend', checkIndex);

   // *make it run again on submit

  }

  exportLink.addEventListener('click', showAlert);

  function showAlert() {
    setTimeout(function(){
      document.getElementById(`dwnld-${ids[index]}`).click();
      document.getElementById('myAlert').style.display = 'inherit';
      document.getElementById('clsBtn').addEventListener('click', closeIt);
    }, 900 );

    setTimeout(function(){
      document.getElementById('myAlert').style.display = 'none';
    }, 4000);
  }

  function closeIt() {
    document.getElementById('myAlert').style.display = 'none';
  }
}

export { initCarousel };
