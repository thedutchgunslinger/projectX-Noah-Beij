document.addEventListener("DOMContentLoaded", function () {
  var searchURL = "http://localhost/jacky/api/r/art";
  var usersElement = document.getElementById("artbox");

  var xhr = new XMLHttpRequest();
  xhr.open("GET", searchURL, true);
  xhr.onload = function (e) {
    if (xhr.readyState === 4) {
      if (xhr.status === 200) {
        var response = JSON.parse(xhr.responseText);

        for (var i = 0; i < response.length; i++) {
          var users = response[i];
          var user = document.createElement("div");
          user.className = "user";

          user.innerHTML =
            ' <a class="example-image-link watermark" href="' +
            users.image +
            '" data-lightbox="pj" data-title="' +
            users.title +
            '"><img class="example-image watermark" src="' +
            users.image +
            '" alt=""/></a><div>' +
            users.title +
            "</div>";

          usersElement.appendChild(user);
        }
      } else {
        console.error(xhr.statusText);
      }
    }
  };
  xhr.onerror = function (e) {
    console.error(xhr.statusText);
  };
  xhr.send(null);
});
