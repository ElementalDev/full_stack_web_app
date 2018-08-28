$(function() {

  myAudio = new Audio('../audio/background.mp3');
  var films = $(".films");

  films.hide();

  if (top.location.pathname === '/movies')
  {
    films.fadeIn(2500);
  }

  myAudio.addEventListener('ended', function() {
      this.currentTime = 0;
      this.play();
  }, false);
  myAudio.play();
})
