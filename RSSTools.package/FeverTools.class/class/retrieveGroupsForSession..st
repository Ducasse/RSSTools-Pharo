public
retrieveGroupsForSession: aFeverSession
	| apikey response json |
	apikey := (MD5 hashMessage: aFeverSession email , ':' , aFeverSession password) hex.
	response := ZnClient new
		url: 'http://' , aFeverSession domain , '/fever/?api&groups';
		formAt: 'api_key' put: apikey;
		post.
	json := NeoJSONReader fromString: response.
	^ FeverGroup fromJSON: json