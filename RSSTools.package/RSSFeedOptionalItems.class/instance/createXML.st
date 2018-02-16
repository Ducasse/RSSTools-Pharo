private
createXML
	^ String
		streamContents: [ :s | 
			language
				ifNotNil: [ s << '<language>'.
					s << language.
					s << '</language>' ].
			rating
				ifNotNil: [ s << '<rating>'.
					s << rating.
					s << '</rating>' ].
			copyright
				ifNotNil: [ s << '<copyright>'.
					s << copyright.
					s << '</copyright>' ].
			pubDate
				ifNotNil: [ s << '<pubDate>'.
					s << pubDate asEmailString.
					s << '</pubDate>' ].
			lastBuildDate
				ifNotNil: [ s << '<lastBuildDate>'.
					s << lastBuildDate asEmailString.
					s << '</lastBuildDate>' ].
			category
				ifNotNil: [ s << '<category>'.
					s << category.
					s << '</category>' ].
			docs
				ifNotNil: [ s << '<docs>'.
					s << docs.
					s << '</docs>' ].
			cloud
				ifNotNil: [ s << '<cloud>'.
					s << cloud.
					s << '</cloud>' ].
			ttl
				ifNotNil: [ s << '<ttl>'.
					s << ttl asString.
					s << '</ttl>' ].
			managingEditor
				ifNotNil: [ s << '<managingEditor>'.
					s << managingEditor.
					s << '</managingEditor>' ].
			webMaster
				ifNotNil: [ s << '<webMaster>'.
					s << webMaster.
					s << '</webMaster>' ].
			skipDays ifNotNil: [ s << skipDays createXML ].
			skipHours ifNotNil: [ s << skipHours createXML ].
			items ifNotNil: [ 
				items do: [ :item |
				
				s << item createXML ] ]]