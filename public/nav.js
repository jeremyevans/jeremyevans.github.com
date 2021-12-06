(function() {
  var button = document.getElementById('toggle-nav');
  var nav = document.getElementById('navbar-nav');
  button.onclick = function(){nav.classList.toggle('display');};
})();
