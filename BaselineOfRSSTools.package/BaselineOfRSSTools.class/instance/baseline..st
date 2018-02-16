baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec package: 'AmazonPAARequester'.
			spec
				project: 'ZincHTTPComponents'
				with: [ spec
						className: #ConfigurationOfZincHTTPComponents;
						versionString: #stable;
						repository: 'http://mc.stfx.eu/ZincHTTPComponents'
					].
				spec project: 'Soup' with: [
				spec
					className: 'ConfigurationOfSoup';
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/Soup/main/' ]
			]