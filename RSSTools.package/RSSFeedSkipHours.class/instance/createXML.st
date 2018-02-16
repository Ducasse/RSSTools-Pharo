private
createXML
	^ String
		streamContents: [ :s | 
			s << '<skipHours>'.
			hours do: [ :each | s << '<hour>' .s<< each asString .s<<'</hour>' ].
			s << '</skipHours>' ]