tests
testCreateFeedObjectWithXML
	| xml |
	xml := RSSFeed createFromXML: testXML1.
	self assert: xml xml equals: testXML1.
	self assert: xml requiredItems title equals: 'Example Feed'.
	self assert: xml requiredItems description equals: 'Insert witty or insightful remark here'.
	self assert: (xml optionalItems items at: 1) title equals: 'Atom-Powered Robots Run Amok'.
	self assert: (xml optionalItems items at: 1) description equals: 'Some text.'.
	self assert: (xml optionalItems items at: 1) guid equals: 'urn:uuid:1225c695-cfb8-4ebb-aaaa-80da344efa6a'