# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

window.toggleDiv = (divId) ->
	$("#"+divId).toggle()

jQuery ->
	$("#preference_sel").change (event) ->
		event.preventDefault()
		# make a get call to update the preference file
		$.get "/home/update", {config_file: $(this).val()}, ->
			window.location.reload()