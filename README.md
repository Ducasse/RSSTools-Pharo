RSSTools-Pharo
==============
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/b81833cbc6484bf2ad69d56665566bee)](https://www.codacy.com/app/brackendev/RSSTools-Pharo?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=brackendev/RSSTools-Pharo&amp;utm_campaign=Badge_Grade)
[![](https://img.shields.io/badge/platform-Pharo-lightgrey.svg)](http://pharo.org/)
[![](https://img.shields.io/badge/language-Smalltalk-orange.svg)](https://en.wikipedia.org/wiki/Smalltalk)
[![](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT/)

Tools to work with [RSS](https://en.wikipedia.org/wiki/RSS) feeds and the [Fever API](https://feedafever.com/api).

[Pharo 6.1](http://pharo.org/) reference platform.

## Install

```smalltalk
Metacello new 
  repository: 'github://brackendev/RSSTools-Pharo';
  baseline: 'RSSTools';
  load.
```

## Example RSS Feed Usage

```smalltalk
"Create feed object from RSS 2.0 URL"
rssFeed := RSSTools createRSSFeedWithURL: 'https://gist.githubusercontent.com/ToddG/1974651/raw/f7978c779bcb00aaa5a6551936e2387590cb303f/sample-rss-2.0-feed.xml'.

"Create RSS 2.0 XML from feed object"
RSSTools createXMLWithRSSFeed: rssFeed.
```

```smalltalk
"Create feed object"

items := OrderedCollection new.

rssFeedItem := RSSFeedItem new 
title: 'Item 1';
description: 'Item Description';
link: 'http://www.hostname.com/'.

items add: rssFeedItem.

rssFeedItem := RSSFeedItem new 
title: 'Item 2';
description: 'Item Description';
link: 'http://www.hostname.com/'.

items add: rssFeedItem.

rssFeedOptionalItems := RSSFeedOptionalItems new 
items: items.

rssFeedRequiredItems := RSSFeedRequiredItems new 
title: 'RSS Feed';
description: 'Feed Description';
link: 'http://www.hostname.com/'.

RSSTools createRSSFeedWithRSSFeedRequiredItems: rssFeedRequiredItems rssFeedOptionalItems: rssFeedOptionalItems.
```


## Example Fever API Usage

```smalltalk
"Create a session"
feverSession := FeverSession sessionWithDomain: 'domain.com' email: 'fever@domain.com' password: 'password'.

"Retrieve feeds"
FeverTools retrieveFeedsForSession: feverSession.

"Retrieve groups"
FeverTools retrieveGroupsForSession: feverSession.

"Retrieve Hot Links"
FeverTools retrieveHotLinksForSession: feverSession page: 1 days: 1.

"Retrieve items"
FeverTools retrieveItemsForSession: feverSession.

```

## Author

### **ʙʀᴀᴄᴋᴇɴ sᴘᴇɴᴄᴇʀ**<br />
[![](https://cdn3.iconfinder.com/data/icons/free-social-icons/67/github_square_black-48.png)](http://github.com/brackendev/)
&nbsp;[![](https://cdn3.iconfinder.com/data/icons/free-social-icons/67/twitter_square_black-48.png)](http://twitter.com/brackendev/)
&nbsp;[![](https://cdn3.iconfinder.com/data/icons/free-social-icons/67/linkedin_square_black-48.png)](https://www.linkedin.com/in/brackenspencer/)

## License

RSSTools-Pharo is released under the MIT license. See the LICENSE file for more info.
