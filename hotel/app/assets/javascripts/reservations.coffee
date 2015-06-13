# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# define a funcion called ready
ready = ->
  $('#second_name').hide()
  # define an event on reservation_room_type field. note this is auto generated
  # id: table name '_' field name
  # -> define a function
  $('#reservation_room_type').change ->
    room_type = $('#reservation_room_type').val()
    if room_type == 'single room'
      $('#second_name').hide()
    else
      $('#second_name').show()
  # identation is important: no 'end' needed
  $('#reservation_start_1i').hover \
    -> ($('#reservation_end_1i').css('color','red'))
    ,
    -> ($('#reservation_end_1i').css('color','blue'))

# more on identation: this code is outside of ready funcion
$(document).ready(ready)
$(document).on('page:load', ready)

# this code compiles in js as

# (function() {
#   var ready;
#
#   ready = function() {
#     $('#second_name').hide();
#     $('#reservation_room_type').change(function() {
#       var room_type;
#       room_type = $('#reservation_room_type').val();
#       if (room_type === 'single room') {
#         return $('#second_name').hide();
#       } else {
#         return $('#second_name').show();
#       }
#     });
#     return $('#reservation_start_1i').hover(function() {
#       return $('#reservation_end_1i').css('color', 'red');
#     }, function() {
#       return $('#reservation_end_1i').css('color', 'blue');
#     });
#   };
#
#   $(document).ready(ready);
#   $(document).on('page:load', ready);
#
# }).call(this);
