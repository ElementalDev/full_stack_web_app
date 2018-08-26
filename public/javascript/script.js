$(function() {

  var films = $(".films");
  films.hide();

  if (top.location.pathname === '/movies')
  {
    films.fadeIn(2500);
  }
})
