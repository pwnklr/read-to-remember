const initAlert = () => {
  const exportLinks = document.querySelectorAll('.card.card-adjusted > div.icons > div.sent > p:nth-child(3) > a > i');
  console.log(exportLinks);
  if(exportLinks) {
    for(let i = 0; i < exportLinks.length; i++) {
      exportLinks[i].addEventListener('click', function() {
        console.log('click')
        setTimeout(function(){
          document.getElementById('dwnld').click();
          document.getElementById('myAlert').style.display = 'inherit';
        }, 900 )
      });
    }
  }
}

const closeAlert = () => {
  const closeBtn = document.getElementById('closeBtn');
  if(closeBtn) {
    closeBtn.addEventListener('click', function() {
      document.getElementById('myAlert').style.display = 'none';
    });
  }
}

export { initAlert, closeAlert };
