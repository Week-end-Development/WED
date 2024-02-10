/*####################WEEK#END#DEVELOPMENT######################
# file:       script.js
# autor:      BO$
# date:       27.05.2020
# version:    0x0001
# copyrights: All rights reserved(c) 2024 Week - End Development
# ==============================================================
# TOPIC: JS Scripts Examples
######################WEEK#END#DEVELOPMENT####################*/

//RELOADER 5s
setTimeout(function () {
  window.location.reload(1);
}, 5000);

//==============================================================
//ADD ICON TO PASSWORD FIELD
const pass_field = document.querySelector('.password');
const show_btn = document.querySelector('.show');
show_btn.addEventListener('click', function () {
  if (pass_field.type === "password") {
    pass_field.type = "text";
  }
  else {
    pass_field.type = "password";
  }
});
const pass_field1 = document.querySelector('.password1');
const show_btn1 = document.querySelector('.show1');
show_btn1.addEventListener('click', function () {
  if (pass_field1.type === "password") {
    pass_field1.type = "text";
  }
  else {
    pass_field1.type = "password";
  }
});

/*####################WEEK#END#DEVELOPMENT####################*/
//REQUIRED jQuery
//GO TO PAGE
$(document).ready(function () {
  setTimeout(() => { window.location = "wed.html"; }, 8000);
});

//TIMER
var timeDisplay = document.getElementById("clock_time");
function refreshTime() {
  var dateString = new Date().toLocaleString("pl-PL", { timeZone: "Europe/Warsaw" });
  var formattedString = dateString.replace(", ", " - ");
  timeDisplay.innerHTML = formattedString;
}
setInterval(refreshTime, 1000);
/*####################WEEK#END#DEVELOPMENT####################*/