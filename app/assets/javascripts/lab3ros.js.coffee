# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
listo = ->
	$('#Campo').change ->
		buscaLotes($('#Campo').val())
ready = ->	
	$('#Lote').change ->
			buscaActividads($('#Lote').val())	
		

$(document).ready(listo)
$(document).on('page:load', ready)

buscaLotes = (campo_id) ->

	$.ajax 
		type: "POST"
		url: "/campos/lotes"
		data:
			campo_id: campo_id

$(document).ready(ready)
$(document).on('page:load', ready)

buscaActividads = (lote_id) ->

	$.ajax 
		type: "POST"
		url: "/lotes/loteactividads"
		data:
			lote_id: lote_id


			#authenticity_token: $("[name='authenticity_token']").val()
		dataType: "script"
