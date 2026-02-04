<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fn="http://www.w3.org/2005/xpath-functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:utils="https://share.obvsg.at/xml/xsl/utils"
                xmlns:mrclib="https://share.obvsg.at/xml/xsl/mrclib"
                expand-text="yes"
                exclude-result-prefixes="xs utils mrclib"
                version="3.0">

  <xsl:include href="../../lib/mrclib.xsl" />

  <xsl:mode on-no-match="shallow-copy" />
  <xsl:output indent="yes" />

  <!-- Match-template für `record` als Startpunkt für die Transformation -->
  <xsl:template match="record">
    <!-- Transformiere alle Felder und schreibe das Ergebnis in eine Variable zur weiteren Verarbeitung. -->
    <xsl:variable name="fields" as="item()*">
      <xsl:apply-templates />
      <xsl:call-template name="create041">
        <xsl:with-param name="cf008" select="controlfield[@tag='008']" />
      </xsl:call-template>
    </xsl:variable>

    <!-- Schreibe den Datensatz in den Output und sortiere die Felder nach Tags. -->
    <record>
      <xsl:perform-sort select="$fields">
        <xsl:sort select="@tag" />
      </xsl:perform-sort>
    </record>
  </xsl:template>

  <!--  LDR/18 auf 'c' setzen -->
  <xsl:template match="leader">
    <leader>{
      mrclib:replace-control-substring(., 18, 18, 'c')
    }</leader>
  </xsl:template>

  <!--
      Das Feld `008` bearbeiten:
      - Pos. 07-10 mit dem Jahr aus 264 befüllen
      - Pos. 23 auf "o" setzen
  -->
  <xsl:template match="controlfield[@tag='008']">
    <xsl:variable name="year"
                  select="analyze-string(../datafield[@tag='260'][1]/subfield[@code='c'],
                                         '[0-9]{4}')
                          //fn:match[1]"/>

    <controlfield tag="008">{
      mrclib:replace-control-substring(., 23, 23, "o")
      => mrclib:replace-control-substring(7, 10, if ($year) then $year else '||||')
    }</controlfield>
  </xsl:template>

  <!-- Erzeuge `041` aus `008/35-37`, falls vorhanden -->
  <xsl:template name="create041">
    <xsl:param name="cf008" required="yes" />
    <xsl:if test="string-length($cf008) eq 40">
      <datafield tag="041" ind1=" " ind2=" ">
        <subfield code="a">{substring($cf008, 36, 3)}</subfield>
      </datafield>
    </xsl:if>
  </xsl:template>

  <!-- Nichtsortierzeichen in 245$$a -->
  <xsl:template match="datafield[@tag='245']/subfield[@code='a']">
    <subfield code="a">{
      mrclib:nonFilingChars(., ../@ind2)
      => mrclib:remove-isbd()
    }</subfield>
  </xsl:template>

  <!-- 245 Ind2 auf '0' setzen -->
  <xsl:template match="datafield[@tag='245']/@ind2">
    <xsl:attribute name="ind2">0</xsl:attribute>
  </xsl:template>

  <!-- ISDB am Feldende entfernen  -->
  <xsl:template match="text()">
    <xsl:text>{mrclib:remove-isbd(.)}</xsl:text>
  </xsl:template>

  <!-- 260 in 264#1 umwandeln -->
  <xsl:template match="datafield[@tag='260']">
    <datafield tag="264" ind1=" " ind2="1">
      <xsl:apply-templates />
    </datafield>
  </xsl:template>

  <!-- IMD SFa und SF2 löschen -->
  <xsl:template match="datafield[@tag=('336', '337', '338')]
                         /subfield[@code=('a', '2')]" />

  <!-- Medientyp Computerressource -->
  <xsl:template match="datafield[@tag='337']/subfield[@code='b']">
    <subfield code="b">c</subfield>
  </xsl:template>

  <!-- Datenträgertyp Computerressource im Fernzugriff -->
  <xsl:template match="datafield[@tag='338']/subfield[@code='b']">
    <subfield code="b">cr</subfield>
  </xsl:template>

  <!-- 9XX entfernen -->
 <xsl:template match="datafield[starts-with(@tag, '9')]" />

</xsl:stylesheet>
