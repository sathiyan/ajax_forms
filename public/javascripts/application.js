$(document).ready(function() {

  $('a.new').click(function(){
    url = $(this).attr('href');
    $.get(url, function(data){
      appendContent(data)
    });
    return false;
  });

  $('a.edit_band').live('click', function() {
    currentDiv = $(this).closest('.row');
    url = $(this).attr('href');
    $.get(url, function(data){
      currentDiv.after(data);
      currentDiv.hide();
    });
    return false;
  });

  $('a.cancel').live('click', function() {
    $('.row').show();
    removeForm();
    return false;
  });

  $(".remote-form")
      .live("ajax:before", function() { console.log('before') })
      .live("ajax:beforeSend", function(xhr, settings) { console.log('beforeSend') })
      .live("ajax:success", function(xhr, data, status) { console.log('success') })
      .live("ajax:complete", function(xhr, status) { console.log('complete') })
      .live("ajax:error", function(xhr, status, error) { console.log('error') })
});

function removeForm() {
  $('.form').remove();
}

function appendContent(content){
  $('.body-div').append(content);
}