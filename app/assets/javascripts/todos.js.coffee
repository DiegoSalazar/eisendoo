# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  auto_expand = $ ".auto-expand"
  orig_width = auto_expand.outerWidth();

  auto_expand.keyup ->
    input = $ this
    oneLetterWidth = 7.65
    minCharacters = 19.0
    len = input.val().length

    if len > minCharacters
      input.width Math.floor(len * oneLetterWidth)

  auto_expand.blur ->
    if auto_expand.width() == orig_width || auto_expand.val().length == 0
      auto_expand.css width: orig_width