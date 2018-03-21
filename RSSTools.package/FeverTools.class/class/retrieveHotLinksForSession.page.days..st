public
retrieveHotLinksForSession: aFeverSession page: anInteger days: days
	| response json links |
	response := ZnClient new
		url:
			'http://' , aFeverSession domain
				, '/fever/?api&links&offset=0&page='
				, anInteger asString , '&range=' , days asString;
		formAt: 'api_key' put: aFeverSession apiKey;
		post.
	json := NeoJSONReader fromString: response.
	links := json at: 'links'.
	^ links