const initAlert = () => {
  const exportLinks = document.querySelectorAll('.card.card-adjusted > div.icons > div.sent > p:nth-child(3) > a > i');
  console.log(exportLinks);
  if(exportLinks) {
    for(let i = 0; i < exportLinks.length; i++) {
      exportLinks[i].addEventListener('click', function() {
        // set file name
        const myDownload = document.getElementById('dwnld');
        const id = exportLinks[i].id.replace('e-', '');
        const card = document.getElementById('card-' + id);
        const title = card.querySelector('h3 a');
        if(title) {
          myDownload.download = `${title.innerHTML.replace(/\s+/g, '_')}_${id}.md`;
        } else {
          const title2 = document.querySelector('body > div:nth-child(2) > div > div > div.text-s > h6');
          myDownload.download = `${title2.innerHTML.replace(/\s+/g, '_')}_${id}.md`;
        }
        // download and show alert
        setTimeout(function() {
          myDownload.click();
          document.getElementById('myAlert').style.display = 'inherit';
        }, 900 )

        setTimeout(function() {
          document.getElementById('myAlert').style.display = 'none';
        }, 3000);
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

const closeEveryAlert = () => {
  const alerts = document.getElementsByClassName('alert');
  if(alerts) {
    for(let i = 0; i < alerts.length; i++) {
      setTimeout(function(){
        alerts[i].style.display = 'none';
      }, 3000);
    }
  }
}

export { initAlert, closeAlert, closeEveryAlert };
