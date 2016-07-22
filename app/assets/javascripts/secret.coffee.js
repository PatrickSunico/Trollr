// Place all the behaviors and hooks related to the matching controller here.
//All this logic will automatically be available in application.js.
//You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function () {
  if ($("#log-out-message").is(":hidden")) {
    $("#log-out-message").delay(30000).slideDown();
   }
});
