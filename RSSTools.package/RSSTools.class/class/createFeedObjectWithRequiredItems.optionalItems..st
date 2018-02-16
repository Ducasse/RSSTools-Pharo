public
createFeedObjectWithRequiredItems: requiredItems optionalItems: optionalItems
	^ RSSFeed new
		requiredItems: requiredItems;
		optionalItems: optionalItems