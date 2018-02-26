public
createFromXML: xml
| feed |
feed := self createFromSoup: (Soup fromString: xml).
feed xml: xml.
^ feed