// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(document).ready(function() {
  $('#new_client').submit(function(e) {
    e.preventDefault();
    var firstname = $('#client_firstname');
    var lastname = $('#client_lastname');
    var email = $('#client_email');

    $(".error").remove();

    if (firstname.val().length < 1) {
      firstname.after('<span class="error">This field is required</span>');
    }
    if (lastname.val().length < 1) {
      lastname.after('<span class="error">This field is required</span>');
    }
    if (email.val().length < 1) {
      email.after('<span class="error">This field is required</span>');
    } else {
      var regEx = /^[A-Z0-9][A-Z0-9._%+-]{0,63}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/;
      var validEmail = regEx.test(email.val());
      if (!validEmail) {
        email.after('<span class="error">Enter a valid email</span>');
      }
   }
});
 });