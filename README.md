RSSTools-Pharo
==============
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/b81833cbc6484bf2ad69d56665566bee)](https://www.codacy.com/app/brackendev/RSSTools-Pharo?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=brackendev/RSSTools-Pharo&amp;utm_campaign=Badge_Grade)
[![](https://img.shields.io/badge/platform-Pharo-lightgrey.svg)](http://pharo.org/)
[![](https://img.shields.io/badge/language-Smalltalk-orange.svg)](https://en.wikipedia.org/wiki/Smalltalk)
[![](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT/)

Tools to work with [RSS](https://en.wikipedia.org/wiki/RSS) feeds.

* [Pharo 6.1](http://pharo.org/) reference platform

## Install

```smalltalk
Metacello new 
  repository: 'github://brackendev/RSSTools-Pharo';
  baseline: 'RSSTools';
  load.
```

## Example Usage

### Create feed object from RSS 2.0 XML

```smalltalk
RSSTools createFeedObjectWithXML: xml.
```

### Create RSS 2.0 XML from feed object

```smalltalk
RSSTools createXMLWithFeedObject: feed.
```

### Create feed object

```smalltalk
items := OrderedCollection new.

item := RSSFeedItem new 
title: 'Item 1';
description: 'Item Description';
link: 'http://www.hostname.com/'.

items add: item.

item := RSSFeedItem new 
title: 'Item 2';
description: 'Item Description';
link: 'http://www.hostname.com/'.

items add: item.

optionalItems := RSSFeedOptionalItems new 
items: items.

requiredItems := RSSFeedRequiredItems new 
title: 'RSS Feed';
description: 'Feed Description';
link: 'http://www.hostname.com/'.

feed := RSSTools createFeedObjectWithRequiredItems: requiredItems optionalItems: optionalItems.
```

## Author

### **ʙʀᴀᴄᴋᴇɴ sᴘᴇɴᴄᴇʀ**<br />
[![](https://cdn3.iconfinder.com/data/icons/free-social-icons/67/github_square_black-48.png)](http://github.com/brackendev/)
&nbsp;[![](https://cdn3.iconfinder.com/data/icons/free-social-icons/67/twitter_square_black-48.png)](http://twitter.com/brackendev/)
&nbsp;[![](https://cdn3.iconfinder.com/data/icons/free-social-icons/67/linkedin_square_black-48.png)](https://www.linkedin.com/in/brackenspencer/)

## License

RSSTools-Pharo is released under the MIT license. See the LICENSE file for more info.
