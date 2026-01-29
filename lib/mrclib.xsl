<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:mrclib="https://share.obvsg.at/xml/xsl/mrclib"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                expand-text="yes"
                version="3.0">

  
  

  
   <xsl:template name="mrclib:create005">
      <xsl:param name="dateTime" select="current-dateTime()" as="xs:dateTime"/>
      <controlfield tag="005">{$dateTime =&gt; format-dateTime("[Y0001][M01][D01][H01][m01][s01].0")}</controlfield>
   </xsl:template>

  
   <xsl:template name="mrclib:create041">
      <xsl:variable name="lang008"
                    select="substring(./*:controlfield[@tag='008'][1], 36, 3)"/>
      <xsl:variable name="lang041a"
                    select="./*:datafield[@tag='041']/*:subfield[@code='a']/string()"/>
      <xsl:variable name="df041_ind1" select="./*:datafield[@tag='041']/@ind1"/>
      <xsl:choose>
         <xsl:when test="not($lang008 = $lang041a)                       and not($lang008 = 'mul')                       and matches($lang008, '[a-z]{3}')">
            <datafield tag="041"
                       ind1="{if ($df041_ind1)                               then ($df041_ind1)                               else ' '}"
                       ind2=" ">
               <subfield code="a">{$lang008}</subfield>
               <xsl:for-each select="./*:datafield[@tag='041']/*:subfield">
                  <xsl:copy-of select="."/>
               </xsl:for-each>
            </datafield>
         </xsl:when>
         <xsl:when test="$lang008 = 'mul' and not(./*:datafield[@tag='041'])">
            <datafield tag="041" ind1=" " ind2=" ">
               <subfield code="a">mul</subfield>
            </datafield>
         </xsl:when>
         <xsl:otherwise>
            <xsl:copy-of select="./*:datafield[@tag='041']"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

  
   <xsl:function name="mrclib:nonFilingChars" as="xs:string">
      <xsl:param name="subfield"/>
      <xsl:param name="charCount"/>
      <xsl:variable name="offset">
         <xsl:choose>
            <xsl:when test="not(number($charCount))">0</xsl:when>
            <xsl:when test="substring($subfield, $charCount, 1) = ' '">{$charCount - 1}</xsl:when>
            <xsl:otherwise>{$charCount}</xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:choose>
         <xsl:when test="$offset != 0">
            <subfield code="{$subfield/@code}">{'&lt;&lt;' || substring($subfield, 1, $offset) || '&gt;&gt;' || substring($subfield, $offset + 1)}</subfield>
         </xsl:when>
         <xsl:otherwise>
            <xsl:copy-of select="$subfield"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>

  
   <xsl:function name="mrclib:remove-isbd" as="xs:string">
      <xsl:param name="s" as="xs:string"/>
      <xsl:variable name="isbdChars" select="('.', ',', ':', ';', '/')"/>
      <xsl:choose>
      <!-- Account for initials -->
         <xsl:when test="matches($s, '\W[A-Z]\.$')">
            <xsl:value-of select="$s"/>
         </xsl:when>
         <xsl:when test="substring($s, string-length($s)) = $isbdChars">
            <xsl:value-of select="substring($s, 1, string-length($s) - 1) =&gt; normalize-space()"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="$s"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>


  
   <xsl:function name="mrclib:replace-control-substring" as="xs:string">
      <xsl:param name="inputString" as="xs:string"/>
      <xsl:param name="start" as="xs:integer"/>
      <xsl:param name="end" as="xs:integer"/>
      <xsl:param name="replacement" as="xs:string"/>
      <xsl:sequence select="mrclib:replace-substring($inputString, $start + 1, $end + 1, $replacement)"/>
   </xsl:function>

  
   <xsl:function name="mrclib:replace-substring" as="xs:string">
      <xsl:param name="inputString" as="xs:string"/>
      <xsl:param name="start" as="xs:integer"/>
      <xsl:param name="end" as="xs:integer"/>
      <xsl:param name="replacement" as="xs:string"/>
      <xsl:variable name="replacementFits"
                    as="xs:boolean"
                    select="$start ge 1                        and $end le string-length($inputString)                        and $end - $start + 1 eq string-length($replacement)"/>
      <xsl:choose>
         <xsl:when test="$replacementFits">
            <xsl:sequence select="(substring($inputString, 0, $start)                          || $replacement                          || substring($inputString, $end + 1))                     =&gt; substring(1, string-length($inputString))"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:message>Invalid Parameters: replacement doesn't fit into specified substring</xsl:message>
            <xsl:sequence select="$inputString"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>


  
   <xsl:template name="mrclib:sortSubfields">
      <xsl:param name="sortSpec" as="xs:string" required="yes"/>
      <xsl:variable name="datafield" select="."/>
      <xsl:variable name="subfSequence"
                    select="for $code in string-to-codepoints($sortSpec)                           return codepoints-to-string($code)"/>
      <datafield tag="{@tag}" ind1="{@ind1}" ind2="{@ind2}">
         <xsl:for-each select="$subfSequence">
            <xsl:variable name="code" select="."/>
            <xsl:sequence select="$datafield/*:subfield[@code=$code]"/>
         </xsl:for-each>
         <xsl:perform-sort select="$datafield/*:subfield[not(@code=$subfSequence)]">
            <xsl:sort select="@code"/>
         </xsl:perform-sort>
      </datafield>
   </xsl:template>
</xsl:stylesheet>
