document.addEventListener('DOMContentLoaded', () => {
  const div1 = document.querySelector('.div1');
  const div2 = document.querySelector('.div2');

  div1.addEventListener('click', () => {
    toggleDiv(div2, div1);
  });

  div2.addEventListener('click', () => {
    toggleDiv(div2, div1);
  });

  function toggleDiv(elementToShow, elementToHide) {
    elementToShow.display = 'block';
    elementToHide.style.display = 'none';
    elementToShow.style.classList.add('underline');
    elementToHide.style.classList.remove('underline');
  }
});
