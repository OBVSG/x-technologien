<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:utils="https://share.obvsg.at/xml/xsl/utils"
  xmlns:mrclib="https://share.obvsg.at/xml/xsl/mrclib"
  exclude-result-prefixes="xs utils mrclib"
  expand-text="yes"
  version="3.0">

  <xsl:mode on-no-match="shallow-copy" />

  <xsl:template
    match="datafield[@tag='655'][subfield[@code='2']/text()]/@ind2">
    <xsl:attribute name="ind2">7</xsl:attribute>
  </xsl:template>

</xsl:stylesheet>
