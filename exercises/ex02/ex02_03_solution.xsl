<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:utils="https://share.obvsg.at/xml/xsl/utils"
                xmlns:mrclib="https://share.obvsg.at/xml/xsl/mrclib"
                expand-text="yes"
                exclude-result-prefixes="xs utils mrclib"
                version="3.0">

  <xsl:mode on-no-match="shallow-copy" />

  <xsl:template match="datafield[@tag='500']
                                [subfield[@code='a']
                                         [matches(., 'foo[0-9]+')]]" />

</xsl:stylesheet>
