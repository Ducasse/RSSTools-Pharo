private
createFromSoup: soup
	| channel feedOptionalItems |
	channel := soup findTag: 'channel'.
	feedOptionalItems := self new.
	(channel findTag: 'language')
		ifNotNil: [ feedOptionalItems language: (channel findTag: 'language') text ].
	(channel findTag: 'rating')
		ifNotNil: [ feedOptionalItems rating: (channel findTag: 'rating') text ].
	(channel findTag: 'copyright')
		ifNotNil: [ feedOptionalItems copyright: (channel findTag: 'copyright') text ].
	(channel findTag: 'pubDate')
		ifNotNil: [ feedOptionalItems pubDate: (channel findTag: 'pubDate') text ].
	(channel findTag: 'lastBuildDate')
		ifNotNil: [ feedOptionalItems lastBuildDate: (channel findTag: 'lastBuildDate') text ].
	(channel findTag: 'category')
		ifNotNil: [ feedOptionalItems category: (channel findTag: 'category') text ].
	(channel findTag: 'docs')
		ifNotNil: [ feedOptionalItems docs: (channel findTag: 'docs') text ].
	(channel findTag: 'cloud')
		ifNotNil: [ feedOptionalItems cloud: (channel findTag: 'cloud') text ].
	(channel findTag: 'ttl')
		ifNotNil: [ feedOptionalItems ttl: (channel findTag: 'ttl') text ].
	(channel findTag: 'managingEditor')
		ifNotNil: [ feedOptionalItems managingEditor: (channel findTag: 'managingEditor') text ].
	(channel findTag: 'webMaster')
		ifNotNil: [ feedOptionalItems webMaster: (channel findTag: 'webMaster') text ].
	feedOptionalItems skipHours: (RSSFeedSkipHours createFromSoup: soup).
	feedOptionalItems skipDays: (RSSFeedSkipDays createFromSoup: soup).
	(channel findTag: 'image')
		ifNotNil: [ feedOptionalItems image: (channel findTag: 'image') text ].
	(channel findAllTags: 'item')
		ifNotNil: [ | itms |
			itms := OrderedCollection new.
			(channel findAllTags: 'item')
				do: [ :each | itms add: (RSSFeedItem createFromSoup: each) ].
			feedOptionalItems items: itms
			].
	^ feedOptionalItems