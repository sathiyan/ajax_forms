$(document).ready(function(){

  $('.edit_band').live('click', function(){
    tr = $(this).closest('tr').toggle();
    tr_form = tr.next('tr').toggle();
    tr_form.find('form')[0].reset();
    return false;
  });

  $('.cancel_update').live('click', function(){
    tr = $(this).closest('tr').toggle();
    tr_form = tr.prev('tr').toggle();
    return false;
  });

});