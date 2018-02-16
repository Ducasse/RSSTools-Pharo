private
createFromSoup: soup
	| hours feedSkipHours |
	hours := OrderedCollection new.
	feedSkipHours := (soup findTag: 'channel') findTag: 'skiphours'.
	feedSkipHours
		ifNotNil: [ (feedSkipHours findAllChildTags: 'hour') do: [ :each | hours add: each text asInteger ] ].
	^ self new hours: hours asArray