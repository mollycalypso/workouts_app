import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["#StayActive,  #StayHome" ],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };