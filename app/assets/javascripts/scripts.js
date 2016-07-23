$(document).ready(function () {
  if ($("#log-out-message").is(":hidden")) {
    $("#log-out-message").delay(30000).slideDown();
   }
});

$(document).ready(function(){
  setTimeout(function(){
    $('.alert-box').fadeOut('slow', function(){
      $(this).remove;
    });
  },2000);
});
