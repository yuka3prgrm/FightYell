document.addEventListener('DOMContentLoaded', () => {
  const background = document.getElementById('background');
  const gif = document.getElementById('gif');

  document.addEventListener('click', () => {
    background.style.display = 'none';
    gif.style.display = 'none';
    gif.style.animationName = 'none';
  });
});