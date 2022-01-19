const enlargeImageOnModal = () => {
  const imageSourceLink = document.getElementById('image-source-link');
  if (imageSourceLink) {
    imageSourceLink.addEventListener('click', (event) => {
      event.preventDefault();
      const srcSource = document.getElementById('image-source');
      document.getElementById('image-preview').setAttribute('src', srcSource.getAttribute('src'))
      $('#image-modal').modal('show');
    })
  }
};

export { enlargeImageOnModal };
