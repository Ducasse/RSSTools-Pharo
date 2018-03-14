tests
testCreateXMLWithFeedObject
	| feed xml |
	feed := RSSTools createFeedObjectWithXML: testXML1.
	xml := RSSTools createXMLWithFeedObject: feed.
	self assert: xml equals: testXML2. 