<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>

<xsl:template match="/">
  <html>
    <head>
      <title><xsl:value-of select="rss/channel/title"/></title>
    </head>
  <body>
  <h2><xsl:value-of select="rss/channel/title"/></h2>
    <table width="100%">
      <tr bgcolor="#9acd32">
        <th>Cover</th>
        <th>Title</th>
        <th>Author</th>
        <th>Read at</th>
        <th>User ★</th>
        <th>Avg ★</th>
      </tr>

      <xsl:for-each select="rss/channel/item">
        <!-- <xsl:sort select="user_rating" order="descending"/> -->
        <xsl:call-template name="item"/>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

<xsl:template name="item">
      <tr>
        <td>
          <xsl:element name="img">
            <xsl:attribute name="src">
              <xsl:value-of select="book_small_image_url"/>
            </xsl:attribute>
          </xsl:element>
        </td>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="author_name"/></td>
        <td>
          <xsl:value-of select="user_read_at"/>
        </td>
        <td><xsl:value-of select="user_rating"/></td>
        <td><xsl:value-of select="average_rating"/></td>
      </tr>
</xsl:template>

</xsl:stylesheet>