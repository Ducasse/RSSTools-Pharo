baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec package: 'RSSTools'.
			spec package: 'XMLParser'.
			spec package: 'XPath'.
			spec package: 'XMLWriter'
			]