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


          // decode base64 => decode on backend
          var src = targetImg.src;
          var encodedString = src.replace('data:image/png;base64,', '');

          //(as in highlights cntrl 'share', path to img: /my_images/image_to_remember_:id.png)

          //ajax for creating image
          var params = { highlight_id: id, content: encodedString }
          var result = $.ajax({
            url: `/highlights/${id}/images`,
            type: 'post',
            dataType: "script",
            data: params,
            success: function(){  // or complete:
              $.ajax({
                url: `/images/${id}/share`,
                type: 'get',
                dataType: 'script'
              })
             },
          })

          // ajax for generate img

          /*
          $.ajax({
            url: `/images/${id}/share`,
            type: 'get',
            dataType: 'script'
          }) */

          //<a id="fb-share" href="https://www.facebook.com/sharer/sharer.php?u=http://localhost:3000/my_images/image_to_remember_${id}.png" target="_blank" rel="noopener noreferrer"></a>

          if(!nodes[i].hasChildNodes()) {
            nodes[i].appendChild(targetImg);
            nodes[i].insertAdjacentHTML('beforeend', `<div style="margin: 0; padding: 12px;background-color: #F7E5AC;">
              <p><a id="fb-share" href="https://www.facebook.com/sharer/sharer.php?u=https://www.readtoremember.xyz/my_images/image_to_remember_${id}.png" target="_blank" rel="noopener noreferrer"><i class="fab fa-facebook-square"></i></a></p>
              <p><a href="http://twitter.com/share?url=https://www.readtoremember.xyz/my_images/image_to_remember_${id}.png" target="_blank" rel="noopener noreferrer"><i class="fab fa-twitter-square"></i></a></p>
              <p><a href="${canvas.toDataURL()}" download><i style="color: #000 !important;" class="fas fa-file-download"></i></a></p></div>`);
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
