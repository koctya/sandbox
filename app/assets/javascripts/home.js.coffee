# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	$("#config").change (e) ->
		e.preventDefault()
		# make a call to update the config file
		$.get "/preferences/update", {current_config_file: $(this).val()}, ->
				window.location.reload()