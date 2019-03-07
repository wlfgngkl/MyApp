// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery
//= require bootstrap-sprockets

$(document).ready(function(e) {
	$(".rowlink").on('click', function(e) {
    var client_path = $(this).attr('id')
    var location = window.location;
    var protocol = location.protocol;
    var host = location.host;
    var clientLocation = protocol + "//" + host + client_path;
    window.location.href = clientLocation;
});

//$(document).ready(function() {
//  $('#form-group').submit(function(e) {
//    e.preventDefault();
//    var firstname = $('#firstname').val();
//    var lastname = $('#lastname').val();
//    var email = $('#email').val();

//    $(".error").remove();

//    if (firstname.length < 1) {
//      $('#firstname').after('<span class="error">This field is required</span>');
//    }
//    if (lastname.length < 1) {
//      $('#lastname').after('<span class="error">This field is required</span>');
//    }
//    if (email.length < 1) {
//      $('#email').after('<span class="error">This field is required</span>');
//    } else {
//      var regEx = /^[A-Z0-9][A-Z0-9._%+-]{0,63}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/;
//      var validEmail = regEx.test(email);
//      if (!validEmail) {
//        $('#email').after('<span class="error">Enter a valid email</span>');
//      }
//   }
});
