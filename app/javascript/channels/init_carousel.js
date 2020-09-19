const initCarousel = () => {
  const carousel = document.querySelector('.carousel');

  const itemClassName = "flashcard transparent-container carousel-cell";
  const cards = document.getElementsByClassName(itemClassName);
  console.log(cards);

  const totalCards = cards.length;
  let slide = 0,
      moving = true;

  // To initialise the carousel we'll want to update the DOM with our own classes
  function setInitialClasses() {
    // Target the last, initial, and next items and give them the relevant class.
    // This assumes there are three or more items.
    cards[totalCards - 1].classList.add("prev");
    cards[0].classList.add("active");
    cards[1].classList.add("next");
  }

  // Set click events to navigation buttons
  function setEventListeners() {
    const next = document.getElementsByClassName('carousel__button--next')[0];
    const prev = document.getElementsByClassName('carousel__button--prev')[0];

    next.addEventListener('click', moveNext);
    prev.addEventListener('click', movePrev);
  }

  function disableInteraction() {
    moving = true;

    setTimeout(function(){
      moving = false
    }, 500);
  }

  function moveCarouselTo(slide) {
    // Check if carousel is moving, if not, allow interaction
    if(!moving) {
      // temporarily disable interactivity
      disableInteraction();

      // Preemptively set variables for the current next and previous slide, as well as the potential next or previous slide.
      var newPrevious = slide - 1,
          newNext = slide + 1,
          oldPrevious = slide - 2,
          oldNext = slide + 2;

      // Test if carousel has more than three items
      if ((totalCards  - 1) > 3) {

        // Checks if the new potential slide is out of bounds and sets slide numbers
        if (newPrevious <= 0) {
          oldPrevious = (totalCards  - 1);
        } else if (newNext >= (totalCards - 1)){
          oldNext = 0;
        }

        // Check if current slide is at the beginning or end and sets slide numbers
        if (slide === 0) {
          newPrevious = (totalCards - 1);
          oldPrevious = (totalCards - 2);
          oldNext = (slide + 1);
        } else if (slide === (totalCards -1)) {
          newPrevious = (slide - 1);
          newNext = 0;
          oldNext = 1;
        }

        // Now we've worked out where we are and where we're going, by adding and removing classes, we'll be triggering the carousel's transitions.

        // Based on the current slide, reset to default classes.
        cards[oldPrevious].className = itemClassName;
        cards[oldNext].className = itemClassName;

        // Add the new classes
        cards[newPrevious].className = itemClassName + " prev";
        cards[slide].className = itemClassName + " active";
        cards[newNext].className = itemClassName + " next";
      }
    }
  }

  // Next navigation handler
  function moveNext() {

    // Check if moving
    if (!moving) {

      // If it's the last slide, reset to 0, else +1
      if (slide === (totalCards - 1)) {
        slide = 0;
      } else {
        slide++;
      }

      // Move carousel to updated slide
      moveCarouselTo(slide);
    }
  }

  // Previous navigation handler
  function movePrev() {

    // Check if moving
    if (!moving) {

      // If it's the first slide, set as the last slide, else -1
      if (slide === 0) {
        slide = (totalCards - 1);
      } else {
        slide--;
      }

      // Move carousel to updated slide
      moveCarouselTo(slide);
    }
  }

/*
  function setActions() {

    const currentId = carousel.selectedElement.dataset.cardId;  // ??
    console.log(currentId);

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

  }  */

  function startCarousel() {
    setInitialClasses();
    setEventListeners();
   // setActions();

    // Set moving to false now that the carousel is ready
    moving = false;
  }

  startCarousel();
}

export { initCarousel };
