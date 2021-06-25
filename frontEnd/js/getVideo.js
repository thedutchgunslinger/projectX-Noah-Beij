document.addEventListener("DOMContentLoaded", function() {
    var searchURL = "http://localhost/jacky/api/r/videos";
    var usersElement = document.getElementById("videobox");


    var xhr = new XMLHttpRequest();
    xhr.open("GET", searchURL, true);
    xhr.onload = function (e) 
    {
        if (xhr.readyState === 4) 
        {
            if (xhr.status === 200) 
            {
                var response = JSON.parse(xhr.responseText);
                
                for(var i = 0; i < response.length; i++)
                {
                    var users = response[i];
                     var user = document.createElement("div");
                    user.className = "user";

                    user.innerHTML = 
                    '  <iframe src="'+ users.url +'" width="100%" height="100%" frameborder="0" allowfullscreen></iframe>  <div>'+ users.title +'</div>';
                    
                    usersElement.appendChild(user);

                    
                   
                }
            } 
            else 
            {
                console.error(xhr.statusText);
            }
        }
    };
    xhr.onerror = function (e) 
    {
        console.error(xhr.statusText);
    };
    xhr.send(null);
});