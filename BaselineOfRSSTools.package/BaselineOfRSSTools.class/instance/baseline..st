baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec package: 'RSSTools'.
			spec
				project: 'XMLParserHTML'
				with: [ spec
						className: 'ConfigurationOfXMLParserHTML';
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLParser/main'
					].
			spec
				project: 'XPath'
				with: [ spec
						className: #ConfigurationOfXPath;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/XPath/main/'
					].
			spec
				project: 'XMLWriter'
				with: [ spec
						className: 'ConfigurationOfXMLWriter';
						versionString: #stable;
						loads: 'default';
						repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XMLWriter/main'
					].
			spec
				project: 'NeoJSON'
				with: [ spec
						className: #ConfigurationOfNeoJSON;
						version: #stable;
						repository: 'http://mc.stfx.eu/Neo'
					].
				spec
				project: 'ZincHTTPComponents'
				with: [ spec
						className: #ConfigurationOfZincHTTPComponents;
						versionString: #stable;
						repository: 'http://mc.stfx.eu/ZincHTTPComponents' ]
			]