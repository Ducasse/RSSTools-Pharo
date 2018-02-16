RSSTools-Pharo
==============
[![](https://img.shields.io/badge/language-Smalltalk-orange.svg?style=flat-square)](https://en.wikipedia.org/wiki/Smalltalk)
[![](https://img.shields.io/badge/platform-Pharo-lightgrey.svg?style=flat-square)](http://pharo.org/)
[![](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://opensource.org/licenses/MIT/)

Tools to work with [RSS 2.0](https://en.wikipedia.org/wiki/RSS) feeds.

* [Pharo 6.1](http://pharo.org/) reference platform

### Example Usage

#### Create feed object from RSS XML

```smalltalk
feed := RSSTools createFeedObjectWithXML: xml.
```

#### Create RSS XML from feed object

```smalltalk
xml := RSSTools createXMLWithFeedObject: feed.
```

#### Create feed object

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
### Author

Bracken Spencer<br />
[![](http://i.imgur.com/tXSoThF.png)](http://twitter.com/brackendev/)
[![](http://i.imgur.com/0o48UoR.png)](http://github.com/brackendev/)
