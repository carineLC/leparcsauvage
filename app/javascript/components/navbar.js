const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lps');
  const bannerHome = document.querySelector(".banner-home")
  if (navbar && bannerHome) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= bannerHome .offsetHeight - '70') {
        navbar.classList.add('navbar-lps--green');
      } else {
        navbar.classList.remove('navbar-lps--green');
      }
    });
  }
};

const hideSublinksOnClickHamburger = () => {
  const navbarMobileHamburger = document.querySelector(".navbar-lps-mobile__hamburger");
  const navbarMobileLink = document.querySelector(".navbar-lps-mobile__link");
  const navbarMobileSubLinksPark = document.getElementById("collapseMenuPark");
  const navbarMobileSubLinksInfos = document.getElementById("collapseMenuInfos");
  navbarMobileHamburger.addEventListener("click", (event) => {
    if (navbarMobileSubLinksPark.classList.contains("show")) {
      navbarMobileSubLinksPark.classList.remove("show");
      navbarMobileLink.classList.add("collapsed");
      navbarMobileLink.setAttribute('aria-expanded', false);
    }
    if (navbarMobileSubLinksInfos.classList.contains("show")) {
      navbarMobileSubLinksInfos.classList.remove("show");
      navbarMobileLink.classList.add("collapsed");
      navbarMobileLink.setAttribute('aria-expanded', false);
    }
  });
}

const hideSublinks = () => {
  const navbarMobileLinkPark = document.getElementById("link_park");
  const navbarMobileLinkInfos = document.getElementById("link_infos");
  const navbarMobileSubLinksPark = document.getElementById("collapseMenuPark");
  const navbarMobileSubLinksInfos = document.getElementById("collapseMenuInfos");
  navbarMobileLinkPark.addEventListener("click", (event) => {
    if (navbarMobileSubLinksInfos.classList.contains("show")) {
      navbarMobileSubLinksInfos.classList.remove("show");
    }
  });
  navbarMobileLinkInfos.addEventListener("click", (event) => {
    if (navbarMobileSubLinksPark.classList.contains("show")) {
      navbarMobileSubLinksPark.classList.remove("show");
    }
  });
}

export { initUpdateNavbarOnScroll, hideSublinksOnClickHamburger, hideSublinks };
