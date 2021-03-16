

import domtoimage from 'dom-to-image';

//var domtoimage = require('dom-to-image');

const initDomImage = () => {



var dataUrl = 'https://stackoverflow.com/questions/41303634/failed-to-execute-appendchild-on-node-only-one-element-on-document-allowed'
var node = document.getElementById('my-node');
var btn = document.getElementById('my-btn');

if(btn) {

  btn.addEventListener('click', function() {


domtoimage.toPng(node)
    .then (function (dataUrl) {
        var img = new Image();
        img.src = dataUrl;
        document.body.appendChild(img);
    })
    .catch(function (error) {
        console.error('oops, something went wrong!', error);
    });

  });

}
}

export { initDomImage };
