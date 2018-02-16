public
createXML
	^ String streamContents: [ :s |
		s << '<?xml version="1.0" ?><rss version="2.0"><channel>'.
			requiredItems ifNotNil: [ s << requiredItems createXML ].
	optionalItems ifNotNil: [ s << optionalItems createXML ].
	s << '</channel></rss>'
		]