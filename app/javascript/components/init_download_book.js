function downloadIt() {
  setTimeout(function() {
    document.getElementById('dwnld-all').click();
  }, 800 );
}

const initDownloadBookAll = () => {
  const exportAll = document.getElementById('ex-all');
  if(exportAll) {
    exportAll.addEventListener('click', downloadIt);
  }
}

const initDownloadBookSelect = () => {
  const exportSelect = document.querySelector('.btn.btn-primary.download');
  if(exportSelect) {
    exportSelect.addEventListener('click', downloadIt);
  }
}

export { initDownloadBookAll, initDownloadBookSelect };
