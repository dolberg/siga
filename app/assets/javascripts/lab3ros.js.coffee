# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
	$('#Campo').change ->
		buscaLotes($('#Campo').val())


$(document).ready(ready)
$(document).on('page:load', ready)

buscaLotes = (campo_id) ->
	$.ajax
		type: "POST"
		url: "/campos/lotes"
		data:
			campo_id: campo_id
			#authenticity_token: $("[name='authenticity_token']").val()
		dataType: "script"