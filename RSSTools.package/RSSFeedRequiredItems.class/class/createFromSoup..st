private
createFromSoup: soup
	^ self new
		title: ((soup findTag: 'channel') findTag: 'title') text;
		description: ((soup findTag: 'channel') findTag: 'description') text;
		link: ((soup findTag: 'channel') findTag: 'link') text