$ ->
	getUrlVars = ->
		vars = {}
		console.log window.location.href
		parts = window.location.href.replace /[?&]+([^=&]+)=([^&]*)/gi, (m, key, value) ->
			vars[key] = value
			if (value == "hawk" || value == "panda" || value == "dolphin"|| value == "fox")
				container = document.getElementById('spiritAnimal')
			else if (value == "black" || value == "red" || value == "blue" || value == "pink")
				container = document.getElementById('backgroundColor')
			else
				container = document.getElementById('fontFamily')
			span = document.createElement('span')
			console.log(vars[key])
			name = document.createTextNode(vars[key])
			span.appendChild name
			container.appendChild span
			return
		vars

	getUrlVars()['result']
	# console.log window.location.href
	# console.log window.location.url