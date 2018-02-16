private
createXML
	^ String
		streamContents: [ :s | 
			s << '<item>'.
			title ifNotNil: [ s << '<title>'.s<< title.s<< '</title>' ].
			description ifNotNil: [ s << '<description>'.s<< description.s<< '</description>' ].
			link ifNotNil: [ s << '<link>'.s<< link .s<< '</link>' ].
			guid ifNotNil: [ s << '<guid>'.s<< guid .s<<'</guid>' ].
			pubdate ifNotNil: [ s << '<pubdate>' .s<<pubdate .s<< '</pubdate>' ].
			author ifNotNil: [ s << '<author>' .s<< author .s<<'</author>' ].
			category ifNotNil: [ s << '<category>' .s<< category .s<< '</category>' ].
			categoryDomain ifNotNil: [ s << '<category domain="' .s<< categoryDomain .s<< '">' .s<< category .s<<'</category>' ].
			comments ifNotNil: [ s << '<comments>' .s<<comments .s<< '</comments>' ].
			pubdate ifNotNil: [ s << '<pubdate>' .s<<pubdate .s<< '</pubdate>' ].
			pubdate ifNotNil: [ s << '<pubdate>' .s<<pubdate .s<<'</pubdate>' ].
			pubdate ifNotNil: [ s << '<pubdate>' .s<<pubdate .s<< '</pubdate>' ].
			pubdate ifNotNil: [ s << '<pubdate>' .s<< pubdate .s<< '</pubdate>' ].
			s << '</item>' ]