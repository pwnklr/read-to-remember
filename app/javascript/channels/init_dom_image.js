const initDomImage = () => {

  var btns = document.querySelectorAll('.my-btns');
  var nodes = document.getElementsByClassName('my-nodes');

  if(btns && nodes) {

    for(let i = 0; i < btns.length; i++) {

      btns[i].addEventListener('click', function() {
        const id = btns[i].dataset.cardId;

        const canvas = document.createElement('canvas');
        const ctx = canvas.getContext('2d');

        const cardW = document.getElementById(`card-${id}`);
        const card = document.getElementById(`image-${id}`);
        canvas.width = cardW.offsetWidth;
        canvas.height = cardW.offsetHeight;

        const tempImg = document.createElement('img');
        tempImg.addEventListener('load', onTempImageLoad);

        tempImg.src = 'data:image/svg+xml,' + encodeURIComponent(`<svg xmlns="http://www.w3.org/2000/svg"><foreignObject width="100%" height="100%"><div xmlns="http://www.w3.org/1999/xhtml"><style>#d {padding: 12px 24px;}</style><div id='d'>${card.innerHTML}</div></div></foreignObject></svg>`)
        const targetImg = document.createElement('img');
        nodes[i].style.display = 'inherit';



        function onTempImageLoad(e) {
          ctx.fillStyle = "white";
          ctx.fillRect(0, 0, canvas.width, canvas.height);
          ctx.drawImage(e.target, 0, 0)
          targetImg.src = canvas.toDataURL();
          // make sharing btns + functionality + add some style
          // download functionality => done
          if(!nodes[i].hasChildNodes()) {
            nodes[i].appendChild(targetImg);
            nodes[i].insertAdjacentHTML('beforeend', `<ul style="margin: 0; padding: 12px;background-color: #F7E5AC;"><i class="fab fa-facebook-square"></i><i class="fab fa-twitter-square"></i><a href="${canvas.toDataURL()}" download><i style="color: #000 !important;" class="fas fa-file-download"></i></a></ul>`);
            targetImg.addEventListener('click', function() {
              nodes[i].style.display = 'none';
            })
          }
        }
      });
    }
  }
}

export { initDomImage };
