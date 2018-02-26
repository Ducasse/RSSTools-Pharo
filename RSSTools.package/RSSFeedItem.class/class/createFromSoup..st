private
createFromSoup: soup
	| feedItem |
	feedItem := self new.
	(soup findTag: 'title') ifNotNil: [ feedItem title: (soup findTag: 'title') text ].
	(soup findTag: 'description') ifNotNil: [ feedItem description: (soup findTag: 'description') text ].
	(soup findTag: 'guid') ifNotNil: [ feedItem guid: (soup findTag: 'guid') text ].
	(soup findTag: 'link') ifNotNil: [ feedItem link: (soup findTag: 'link') text ].
	(soup findTag: 'author') ifNotNil: [ feedItem author: (soup findTag: 'author') text ].
	(soup findTag: 'category') ifNotNil: [ feedItem category: (soup findTag: 'category') text ].
	(soup findTag: 'categoryDomain') ifNotNil: [ feedItem categoryDomain: (soup findTag: 'categoryDomain') text ].
	(soup findTag: 'comments') ifNotNil: [ feedItem comments: (soup findTag: 'comments') text ].
	(soup findTag: 'enclosure') ifNotNil: [ feedItem enclosure: (soup findTag: 'enclosure') text ].
	(soup findTag: 'pubDate') ifNotNil: [ feedItem pubDate: (soup findTag: 'pubDate') text ].
	(soup findTag: 'source') ifNotNil: [ feedItem source: (soup findTag: 'source') text ].
	^ feedItem