public
retrieveHotLinksForSession: aFeverSession days: days
	| allResults hotLinks |
	allResults := OrderedCollection new.
	hotLinks := [ :page | 
	| results |
	results := self retrieveHotLinksForSession: aFeverSession page: page days: days.
	results isEmpty
		ifTrue: [ ^ allResults ]
		ifFalse: [ allResults addAll: results.
			hotLinks value: page + 1
			]
	].
	hotLinks value: 1