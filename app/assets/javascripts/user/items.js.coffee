# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('body')
    .on('change', '.js-update-preview', ->
      title = $('#item_title').val()
      contents = $('#item_contents').val()
      alert('change title=' + title + ', contents=' + contents)
      $.ajax(
        type: 'POST',
        url: '/user/item/preview',
        data: {
          title: title,
          contents: contents
        }
      )
    )