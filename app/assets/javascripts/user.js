$(document).ready(function(){

  $('#new_user').on('ajax:success',function(e, data, status, xhr){
    $('#new_user .alert').remove();
    $('#new_user').prepend('<div class="alert alert-success">The new user is saved successfully!</div>');
    $('#user_list').append($('<li>').text(data.name));
  }).on('ajax:error',function(e, xhr, status, error){
    $('#new_user').render_form_errors( $.parseJSON(xhr.responseText) );
  });
});


$.fn.render_form_errors = function(errors){

  $form = this;
  this.clear_previous_errors();

  $.each(errors, function(field, messages){
    $input = $form.find('input[name="' + field + '"]');
    $input.closest('.form-group').addClass('has-error').find('.help-block').html( messages.join(' & ') );
  });
};

$.fn.clear_previous_errors = function(){

  $('.form-group.has-error', this).each(function(){
    $('.help-block', $(this)).html('');
    $(this).removeClass('has-error');
  });
}