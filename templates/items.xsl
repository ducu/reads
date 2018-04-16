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
    <h3 class="title"><xsl:value-of select="title"/></h3>
    <h5 class="author_name">by <xsl:value-of select="author_name"/></h5>
    <xsl:element name="img">
      <xsl:attribute name="src">
        <xsl:value-of select="book_medium_image_url"/>
      </xsl:attribute>
    </xsl:element>
    <div class="about">
      <p>Rated: <xsl:if test="user_rating != 0"><span class="user_rating"><xsl:value-of select="user_rating"/></span> of </xsl:if><span class="average_rating"><xsl:value-of select="average_rating"/></span></p>
      <xsl:if test="user_read_at != ''">
      <p>Read: <span class="user_read_at"><xsl:value-of select="substring(user_read_at, 5, 12)"/></span></p>
      </xsl:if>
      <xsl:if test="user_review != ''">
      <div class="user_review">Review: <xsl:value-of select="user_review" disable-output-escaping="yes"/></div>
      </xsl:if>
    </div>
    <hr/>
  </li>
</xsl:template>

</xsl:stylesheet>