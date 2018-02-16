private
createXML
	^ String
		streamContents: [ :s | 
			s << '<image>'.
			description
				ifNotNil: [ s << '<description>'.
					s << description.
					s << '</description>' ].
			height
				ifNotNil: [ s << '<height>'.
					s << height asString.
					s << '</height>' ].
			link
				ifNotNil: [ s << '<link>'.
					s << link.
					s << '</link>' ].
			title
				ifNotNil: [ s << '<title>'.
					s << title.
					s << '</title>' ].
			url
				ifNotNil: [ s << '<url>'.
					s << url.
					s << '</url>' ].
			width
				ifNotNil: [ s << '<width>'.
					s << width asString.s<< '</width>' ].
			s << '</image>' ]