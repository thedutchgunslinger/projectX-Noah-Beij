let controller = new ScrollMagic.Controller();
let timeline = new TimelineMax();

timeline
  .to(".parallax6", 10, { y: -450 }, "-=10")
  .to(".parallax5", 10, { y: -300 }, "-=10")
  .to(".parallax4", 10, { y: 50, x: -200 }, "-=10")
  .to(".parallax3", 10, { y: -150 }, "-=10")
  .to(".parallax2", 10, { y: -70 }, "-=10")
  .to(".parallax1", 10, { y: -50 }, "-=10")
  .to(".content", 10, { top: "0%" }, "-=10");


let scene = new ScrollMagic.Scene({
  triggerElement: "section",
  duration: "300%",
  triggerHook: 0,
})
  .setTween(timeline)
  .setPin("section")
  .addTo(controller);