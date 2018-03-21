baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec package: 'RSSTools'.
			spec package: 'XMLParserHTML'.
			spec package: 'XPath'.
			spec package: 'XMLWriter'
			]