$(document).ready(function() {

  $('#add-value').on('click', function(e) {
    e.preventDefault();
    $('#values').append($(this).data('partial'));
  });

  $('#values').on('click', '.remove-value', function(e) {
    e.preventDefault();
    $(this).closest('.nested-field').remove();
  });
});
