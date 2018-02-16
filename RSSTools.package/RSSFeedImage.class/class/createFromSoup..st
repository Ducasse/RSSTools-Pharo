private
createFromSoup: soup
	| channel feedImage |
	channel := soup findTag: 'channel'.
	feedImage := self new.
	(channel findTag: 'title') ifNotNil: [ feedImage title: (channel findTag: 'title') text ].
	(channel findTag: 'url') ifNotNil: [ feedImage url: (channel findTag: 'url') text ].
	(channel findTag: 'link') ifNotNil: [ feedImage link: (channel findTag: 'link') text ].
	(channel findTag: 'width')
		ifNotNil: [ feedImage width: (channel findTag: 'width') text asInteger ].
	(channel findTag: 'height')
		ifNotNil: [ feedImage height: (channel findTag: 'height') text asInteger ].
	(channel findTag: 'description')
		ifNotNil: [ feedImage description: (channel findTag: 'description') text ].
	^ feedImage