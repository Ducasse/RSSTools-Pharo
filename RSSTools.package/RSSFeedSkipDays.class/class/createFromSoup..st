private
createFromSoup: soup
	| days feedSkipDays |
	days := OrderedCollection new.
	feedSkipDays := (soup findTag: 'channel') findTag: 'skipdays'.
	feedSkipDays
		ifNotNil: [ (feedSkipDays findAllChildTags: 'day') do: [ :each | days add: each text ] ].
	^ self new days: days asArray