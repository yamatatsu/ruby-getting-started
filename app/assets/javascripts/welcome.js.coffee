# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$('html').on 'click', 'button[name=add]', ->
  $.ajax {
    type: 'POST'
    url: '/api/tasks'
    data: { task: {title: $('input[name=title]').val()} }
  }
    .done (data) ->
      console.log data
