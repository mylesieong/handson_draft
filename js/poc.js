/**
 * Load support-text.txt from get
 */
function loadText() {
  alert("loadText function");
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
      document.getElementById("output-text").innerHTML = xhttp.responseText;
    }
  };
  xhttp.open("GET", "support-text.txt", true);
  xhttp.send();
}

/**
 * Load support-json.txt from get
 */
function loadJson() {
  alert("loadJson function");
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
      var obj = JSON.parse(xhttp.responseText);
      document.getElementById("output-json").innerHTML =
        obj.name + "<br>" +
        obj.age + "<br>" +
        obj.email;
    }
  };
  xhttp.open("GET", "support-json.txt", true);
  xhttp.send();
}

/**
 * Load json from Servlet which is mapped to url: /Website/poc
 * The servlet reads json.x and json.y and return json object
 * appended json.sum field.
 */
function loadServlet() {
  alert("loadServlet function");
  var jsonObj='{"x":7,"y":6}';
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
      try{
      	var output = JSON.parse(xhttp.responseText);
      }catch(e){
	alert(e.stack);
	alert(xhttp.responseText);
      }
      document.getElementById("output-servlet").innerHTML =
        output.x + "+" +
        output.y + "=" +
        output.sum;
    }
  };
  xhttp.open("POST", "/Website/poc", true);
  xhttp.setRequestHeader("Content-type","applcation/json");
  xhttp.send(jsonObj);
}
