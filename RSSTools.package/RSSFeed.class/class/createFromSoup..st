private
createFromSoup: soup
	| feed |
	feed := self new.
	feed requiredItems: (RSSFeedRequiredItems createFromSoup: soup).
	feed optionalItems: (RSSFeedOptionalItems createFromSoup: soup).
	^ feed