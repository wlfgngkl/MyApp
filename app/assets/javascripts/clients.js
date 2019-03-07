// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(document).ready(function() {
  $('form#new_client,form.edit_client').submit(function(e) {
    e.preventDefault();
    var firstname = $('#client_firstname');
    var lastname = $('#client_lastname');
    var email = $('#client_email');
    $(".form-group").toggleClass("form-group-has-error", false)

    $(".error").remove()

    if (firstname.val().length < 1) {
      firstname.closest('.form-group').toggleClass("form-group-has-error", true);
      firstname.after('<span class="error">This field is required</span>');
    }
    if (lastname.val().length < 1) {
      lastname.closest('.form-group').toggleClass("form-group-has-error", true);
      lastname.after('<span class="error">This field is required</span>');
    }
    if (email.val().length < 1) {
      email.closest('.form-group').toggleClass("form-group-has-error", true);
      email.after('<span class="error">This field is required</span>');
    } else {
      var regEx = /^[A-Z0-9][A-Z0-9._%+-]{0,63}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/;
      var reg2 = /^(([^<>()[\]\.,;:\s@"]+(\.[^<>()[\]\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/

      var validEmail = reg2.test(email.val());
      if (!validEmail) {
        email.after('<span class="error">Enter a valid email</span>');
      }
   }
});
 });