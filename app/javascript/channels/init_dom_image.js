const initDomImage = () => {

  var btns = document.querySelectorAll('.my-btns');

  if(btns) {

    for(let i = 0; i < btns.length; i++) {

      btns[i].addEventListener('click', function() {
        const id = btns[i].dataset.cardId;

        const cardW = document.getElementById(`card-${id}`);
        const card = document.getElementById(`image-${id}`);

        var node = document.getElementById('my-node');
        const canvas = document.createElement('canvas');

        const ctx = canvas.getContext('2d');
        canvas.width = cardW.offsetWidth;
        canvas.height = cardW.offsetHeight;

        const tempImg = document.createElement('img');
        tempImg.addEventListener('load', onTempImageLoad);

        tempImg.src = 'data:image/svg+xml,' + encodeURIComponent(`<svg xmlns="http://www.w3.org/2000/svg"><foreignObject width="100%" height="100%"><div xmlns="http://www.w3.org/1999/xhtml"><style>#d {padding: 12px 24px; background-color: #fff;}</style><div id='d'>${card.innerHTML}</div></div></foreignObject></svg>`)
        const targetImg = document.createElement('img');
        node.appendChild(targetImg);

        function onTempImageLoad(e) {
          ctx.drawImage(e.target, 0, 0)
          targetImg.src = canvas.toDataURL()
        }
      });
    }
  }
}

export { initDomImage };
