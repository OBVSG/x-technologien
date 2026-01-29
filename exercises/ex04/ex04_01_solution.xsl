<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:utils="https://share.obvsg.at/xml/xsl/utils"
                xmlns:mrclib="https://share.obvsg.at/xml/xsl/mrclib"
                expand-text="yes"
                version="3.0">

  <xsl:mode on-no-match="shallow-copy" />

  <!--
  <xsl:template match="datafield[@tag='655']
                                [subfield[@code='a'][.='Backbuch']]
                       /subfield[@code='0']">
    <xsl:choose>
      <xsl:when test="not(.='(DE-588)1071926306')">
        <subfield code="0">(DE-588)1071926306</subfield>
      </xsl:when>
      <xsl:otherwise>
        <xsl:sequence select="." />
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  -->

  <!-- als match auf subfeld mit falscher nummer implementieren  -->
  <!-- <xsl:template match="datafield[@tag='655'] -->
  <!--                               [subfield[@code='a'][.='Backbuch']] -->
  <!--                      /subfield[@code='0'] -->
  <!--                               [.='(DE-588)7502992-3']"> -->
  <!--   <subfield code="0">(DE-588)1071926306</subfield> -->
  <!-- </xsl:template> -->

  <!-- als match auf textknoten mit falscher nummer implementieren  -->
  <xsl:template match="datafield[@tag='655']
                                [subfield[@code='a'][.='Backbuch']]
                       /subfield[@code='0']
                                [.='(DE-588)7502992-3']
                                /text()">
    <xsl:text>(DE-588)1071926306</xsl:text>
  </xsl:template>

</xsl:stylesheet>

    <!--                             [.='(DE-588)7502992-3']"> -->
    <!-- <subfield code="0">(DE-588)1071926306</subfield> -->
