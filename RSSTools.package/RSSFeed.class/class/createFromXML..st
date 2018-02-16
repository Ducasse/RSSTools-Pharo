public
createFromXML: xml
	^ self createFromSoup: (Soup fromString: xml)