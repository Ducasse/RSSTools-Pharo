private
createXML
	^ String
		streamContents:
			[ :s | 
			s << '<description>'.
			description ifNotNil: [ s << description ].
			s << '</description>'.
			s << '<link>'.
			link ifNotNil: [ s << link ].
			s << '</link>'.
			s << '<title>'.
			title ifNotNil: [ s << title ] . s << '</title>']