QBScoreboard = {};

$(document).ready(function () {
  window.addEventListener("message", function (event) {
    switch (event.data.action) {
      case "open":
        QBScoreboard.Open(event.data);
        break;
      case "close":
        QBScoreboard.Close();
        break;
    }
  });
});

QBScoreboard.Open = function (data) {
  $(".scoreboard-block").fadeIn(150);

  $('grua').html(data.grua+ ' puntos')
  document.getElementById("grua").innerHTML = data.grua+' puntos';

  $('hotdogs').html(data.hotdogs+ ' puntos')
  document.getElementById("hotdogs").innerHTML = data.hotdogs+' puntos';

  $('taxi').html(data.taxi+' puntos')
  document.getElementById("taxi").innerHTML = data.taxi+' puntos';

  $('camion').html(data.camion+' puntos')
  document.getElementById("camion").innerHTML = data.camion+' puntos';

  $('drogas').html(data.drogas+' puntos')
  document.getElementById("drogas").innerHTML = data.drogas+' puntos';

  $('fabricar').html(data.fabricar+' puntos')
  document.getElementById("fabricar").innerHTML = data.fabricar+' puntos';

  $('componentes').html(data.componentes+' puntos')
  document.getElementById("componentes").innerHTML = data.componentes+' puntos';

};

QBScoreboard.Close = function () {
  $(".scoreboard-block").fadeOut(150);
};
