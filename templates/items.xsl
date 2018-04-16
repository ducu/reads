<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>

<xsl:template match="/">
  <ol class="items">
    <xsl:for-each select="rss/channel/item">
      <!-- <xsl:sort select="user_rating" order="descending"/> -->
      <xsl:call-template name="item"/>
    </xsl:for-each>
  </ol>
</xsl:template>

<xsl:template name="item">
  <li class="item">
    <xsl:element name="img">
      <xsl:attribute name="src">
        <xsl:value-of select="book_medium_image_url"/>
      </xsl:attribute>
    </xsl:element>
    <h3 class="title"><xsl:value-of select="title"/></h3>
    <h4 class="author_name"><xsl:value-of select="author_name"/></h4>
    <span class="user_read_at"><xsl:value-of select="user_read_at"/></span>
    <span class="user_rating"><xsl:value-of select="user_rating"/></span>
    <span class="average_rating"><xsl:value-of select="average_rating"/></span>
    <div class="user_review"><xsl:value-of select="user_review" disable-output-escaping="yes"/></div>
  </li>
</xsl:template>

</xsl:stylesheet>