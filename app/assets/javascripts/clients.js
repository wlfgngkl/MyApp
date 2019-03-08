// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(document).ready(function() {
  $('form#new_client,form.edit_client').submit(function(event) {
    var errors = 0;
    var firstname = $('#client_firstname');
    var lastname = $('#client_lastname');
    var email = $('#client_email');
    $(".form-group").toggleClass("form-group-has-error", false)

    $(".error").remove()

    if (firstname.val().length < 1) {
      firstname.closest('.form-group').toggleClass("form-group-has-error", true);
      firstname.after('<span class="error">This field is required</span>');
      errors ++;
    }
    if (lastname.val().length < 1) {
      lastname.closest('.form-group').toggleClass("form-group-has-error", true);
      lastname.after('<span class="error">This field is required</span>');
      errors ++;
    }
    if (email.val().length < 1) {
      email.closest('.form-group').toggleClass("form-group-has-error", true);
      email.after('<span class="error">This field is required</span>');
      errors ++;
    } else {
      var reg2 = /^(([^<>()[\]\.,;:\s@"]+(\.[^<>()[\]\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/

      var validEmail = reg2.test(email.val());
      if (!validEmail) {
        email.after('<span class="error">Enter a valid email</span>');
        errors ++;
      }
   }
   errors === 0 ? null : event.preventDefault()

});
 });


 