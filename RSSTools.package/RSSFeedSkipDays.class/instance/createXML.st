private
createXML
	^ String
		streamContents: [ :s | 
			s << '<skipDays>'.
			days do: [ :each | s << '<day>' .s<<each .s<<'</day>' ].
			s << '</skipDays>' ]