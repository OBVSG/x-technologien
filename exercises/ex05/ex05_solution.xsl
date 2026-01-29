<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:utils="https://share.obvsg.at/xml/xsl/utils"
                xmlns:mrclib="https://share.obvsg.at/xml/xsl/mrclib"
                expand-text="yes"
                exclude-result-prefixes="xs utils mrclib"
                version="3.0">

  <xsl:include href="../../lib/mrclib.xsl" />

  <xsl:mode on-no-match="shallow-copy" />
  <xsl:template match="leader">
    <xsl:variable name="pos7in" select="substring(., 8, 1)" />
    <xsl:variable name="pos19in" select="substring(., 20, 1)" />
    <xsl:variable name="pos19">
      <xsl:choose>
        <xsl:when test="not($pos7in = ('c', 'd', 'm'))">{' '}</xsl:when>
        <xsl:when test="$pos19in eq 'a'">{$pos19in}</xsl:when>
        <xsl:when test="../datafield[@tag='773'][subfield[@code='w']]
                        and not(../datafield[@tag='773'][subfield[@code='i']])">c</xsl:when>
        <xsl:when test="../datafield[@tag='830']">b</xsl:when>
        <xsl:when test="../datafield[@tag='773'][subfield[@code='i']]">{' '}</xsl:when>
        <xsl:otherwise>{$pos19in}</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <leader>{
      mrclib:replace-control-substring(., 18, 18, "c")
      => mrclib:replace-control-substring(19, 19, $pos19)
    }</leader>
  </xsl:template>

</xsl:stylesheet>
