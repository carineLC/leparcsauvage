const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lps');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-lps--white');
      } else {
        navbar.classList.remove('navbar-lps--white');
      }
    });
  }
};

export { initUpdateNavbarOnScroll };
