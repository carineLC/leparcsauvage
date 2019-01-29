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

const hideSublinksOnClickHamburger = () => {
  const navbarMobileHamburger = document.querySelector(".navbar-lps-mobile__hamburger");
  const navbarMobileLink = document.querySelector(".navbar-lps-mobile__link");
  const navbarMobileSubLinks = document.getElementById("collapseMenu");
  navbarMobileHamburger.addEventListener("click", (event) => {
    if (navbarMobileSubLinks.classList.contains("show")) {
      navbarMobileSubLinks.classList.remove("show");
      navbarMobileLink.classList.add("collapsed");
      navbarMobileLink.setAttribute('aria-expanded', false);
    }
  });
}

export { initUpdateNavbarOnScroll, hideSublinksOnClickHamburger };
