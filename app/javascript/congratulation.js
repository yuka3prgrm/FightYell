window.addEventListener('load', () => {
  const background = document.getElementById('background');
  const gif = document.getElementById('gif');

  document.addEventListener('click', () => {
    if (background && gif) {
      background.style.display = 'none';
      gif.style.display = 'none';
    }
  });
});