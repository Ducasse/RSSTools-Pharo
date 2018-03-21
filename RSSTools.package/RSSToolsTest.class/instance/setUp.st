initialization
setUp
	"https://gist.githubusercontent.com/ToddG/1974651/raw/f7978c779bcb00aaa5a6551936e2387590cb303f/sample-rss-2.0-feed.xml"

	testXML1 := (XMLDOMParser
		on:
			'<?xml version="1.0" encoding="utf-8"?>
<rss version="2.0">
        <channel>

                <title>Example Feed</title>
                <description>Insert witty or insightful remark here</description>
                <link>http://example.org/</link>
                <lastBuildDate>Sat, 13 Dec 2003 18:30:02 GMT</lastBuildDate>
                <managingEditor>johndoe@example.com (John Doe)</managingEditor>

                <item>
                        <title>Atom-Powered Robots Run Amok</title>
                        <link>http://example.org/2003/12/13/atom03</link>
                        <guid isPermaLink="false">urn:uuid:1225c695-cfb8-4ebb-aaaa-80da344efa6a</guid>
                        <pubDate>Sat, 13 Dec 2003 18:30:02 GMT</pubDate>
                        <description>Some text.</description>
                </item>

        </channel>
</rss>') parseDocument.
	testXML2 := (XMLDOMParser
		on:
			'<?xml version="1.0"?><rss version="2.0"><channel><description>Insert witty or insightful remark here</description><link>http://example.org/</link><title>Example Feed</title><item><category /><description>Some text.</description><guid>urn:uuid:1225c695-cfb8-4ebb-aaaa-80da344efa6a</guid><link>http://example.org/2003/12/13/atom03</link><title>Atom-Powered Robots Run Amok</title></item></channel></rss>')
		parseDocument