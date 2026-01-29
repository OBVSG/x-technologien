<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="#all"
                version="3.0">
   <!-- the tested stylesheet -->
   <xsl:import href="file:/home/ss/projects/teaching/x-technologien_gitlab/exercises/ex06/ex06.xsl"/>
   <!-- XSpec library modules providing tools -->
   <xsl:include href="file:/home/ss/opt/xspec/src/common/runtime-utils.xsl"/>
   <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}stylesheet-uri"
                 as="Q{http://www.w3.org/2001/XMLSchema}anyURI">file:/home/ss/projects/teaching/x-technologien_gitlab/exercises/ex06/ex06.xsl</xsl:variable>
   <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}xspec-uri"
                 as="Q{http://www.w3.org/2001/XMLSchema}anyURI">file:/home/ss/projects/teaching/x-technologien_gitlab/exercises/ex06/ex06.xspec</xsl:variable>
   <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}is-external"
                 as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                 select="false()"/>
   <xsl:variable name="Q{urn:x-xspec:compile:impl}thread-aware"
                 as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                 select="(system-property('Q{http://www.w3.org/1999/XSL/Transform}product-name') eq 'SAXON') and starts-with(system-property('Q{http://www.w3.org/1999/XSL/Transform}product-version'), 'EE ')"
                 static="yes"/>
   <xsl:variable name="Q{urn:x-xspec:compile:impl}logical-processor-count"
                 as="Q{http://www.w3.org/2001/XMLSchema}integer"
                 use-when="$Q{urn:x-xspec:compile:impl}thread-aware"
                 select="Q{java:java.lang.Runtime}getRuntime() =&gt; Q{java:java.lang.Runtime}availableProcessors()"/>
   <xsl:variable name="Q{urn:x-xspec:compile:impl}thread-count"
                 as="Q{http://www.w3.org/2001/XMLSchema}integer"
                 select="1"
                 use-when="$Q{urn:x-xspec:compile:impl}thread-aware =&gt; not()"/>
   <!-- the main template to run the suite -->
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}main"
                 as="empty-sequence()">
      <xsl:context-item use="absent"/>
      <!-- info message -->
      <xsl:message>
         <xsl:text>Testing with </xsl:text>
         <xsl:value-of select="system-property('Q{http://www.w3.org/1999/XSL/Transform}product-name')"/>
         <xsl:text> </xsl:text>
         <xsl:value-of select="system-property('Q{http://www.w3.org/1999/XSL/Transform}product-version')"/>
      </xsl:message>
      <!-- set up the result document (the report) -->
      <xsl:result-document format="Q{{http://www.jenitennison.com/xslt/xspec}}xml-report-serialization-parameters">
         <xsl:element name="report" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien_gitlab/exercises/ex06/ex06.xspec</xsl:attribute>
            <xsl:attribute name="stylesheet" namespace="">file:/home/ss/projects/teaching/x-technologien_gitlab/exercises/ex06/ex06.xsl</xsl:attribute>
            <xsl:attribute name="date" namespace="" select="current-dateTime()"/>
            <!-- invoke each compiled top-level x:scenario -->
            <xsl:for-each select="1 to 1">
               <xsl:choose>
                  <xsl:when test=". eq 1">
                     <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:message terminate="yes">ERROR: Unhandled scenario invocation</xsl:message>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:for-each>
         </xsl:element>
      </xsl:result-document>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>773</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien_gitlab/exercises/ex06/ex06.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>773</xsl:text>
         </xsl:element>
         <xsl:for-each select="1 to 3">
            <xsl:choose>
               <xsl:when test=". eq 1">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario1"/>
               </xsl:when>
               <xsl:when test=". eq 2">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario2"/>
               </xsl:when>
               <xsl:when test=". eq 3">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:message terminate="yes">ERROR: Unhandled scenario invocation</xsl:message>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:for-each>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..Indikatoren fix auf '08' setzen</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario1</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien_gitlab/exercises/ex06/ex06.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Indikatoren fix auf '08' setzen</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:element name="datafield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="tag"
                                 namespace=""
                                 select="'', ''"
                                 separator="773"/>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="ind1"
                                 namespace=""
                                 select="'', ''"
                                 separator="3"/>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="ind2"
                                 namespace=""
                                 select="'', ''"
                                 separator="3"/>
                  <xsl:element name="subfield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="code"
                                    namespace=""
                                    select="'', ''"
                                    separator="w"/>
                     <xsl:text>(AT-OBV)AC12345678</xsl:text>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d60e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="datafield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="tag"
                                 namespace=""
                                 select="'', ''"
                                 separator="773"/>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="ind1"
                                 namespace=""
                                 select="'', ''"
                                 separator="3"/>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="ind2"
                                 namespace=""
                                 select="'', ''"
                                 separator="3"/>
                  <xsl:element name="subfield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="code"
                                    namespace=""
                                    select="'', ''"
                                    separator="w"/>
                     <xsl:text>(AT-OBV)AC12345678</xsl:text>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d60e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under '773 Indikatoren fix auf '08' setzen'): Context is an empty sequence.</xsl:message>
         </xsl:if>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:apply-templates select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario1-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario1-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:message>indikatoren auf '08' gesetzt</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e8-doc" as="document-node()">
         <xsl:document>
            <xsl:element name="datafield" namespace="">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="tag"
                              namespace=""
                              select="'', ''"
                              separator="773"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind1"
                              namespace=""
                              select="'', ''"
                              separator="0"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind2"
                              namespace=""
                              select="'', ''"
                              separator="8"/>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="w"/>
                  <xsl:text>(AT-OBV)AC12345678</xsl:text>
               </xsl:element>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e8"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e8-doc ! ( node() )"><!--expected result--></xsl:variable>
      <!-- flag if @result-type is present but $x:result is not the right type -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}result-type-mismatch"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="false()"/>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="not($Q{urn:x-xspec:compile:impl}result-type-mismatch) and                      Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e8, $Q{http://www.jenitennison.com/xslt/xspec}result, '')"/>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario1-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>indikatoren auf '08' gesetzt</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:otherwise/>
         </xsl:choose>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e8"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario2"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..773 mit SFa</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario2</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien_gitlab/exercises/ex06/ex06.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>773 mit SFa</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:element name="datafield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="tag"
                                 namespace=""
                                 select="'', ''"
                                 separator="773"/>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="ind1"
                                 namespace=""
                                 select="'', ''"
                                 separator="0"/>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="ind2"
                                 namespace=""
                                 select="'', ''"
                                 separator="8"/>
                  <xsl:element name="subfield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="code"
                                    namespace=""
                                    select="'', ''"
                                    separator="a"/>
                     <xsl:text>Titel</xsl:text>
                  </xsl:element>
                  <xsl:element name="subfield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="code"
                                    namespace=""
                                    select="'', ''"
                                    separator="w"/>
                     <xsl:text>(AT-OBV)AC12345678</xsl:text>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d75e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="datafield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="tag"
                                 namespace=""
                                 select="'', ''"
                                 separator="773"/>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="ind1"
                                 namespace=""
                                 select="'', ''"
                                 separator="0"/>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="ind2"
                                 namespace=""
                                 select="'', ''"
                                 separator="8"/>
                  <xsl:element name="subfield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="code"
                                    namespace=""
                                    select="'', ''"
                                    separator="a"/>
                     <xsl:text>Titel</xsl:text>
                  </xsl:element>
                  <xsl:element name="subfield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="code"
                                    namespace=""
                                    select="'', ''"
                                    separator="w"/>
                     <xsl:text>(AT-OBV)AC12345678</xsl:text>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d75e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under '773 773 mit SFa'): Context is an empty sequence.</xsl:message>
         </xsl:if>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:apply-templates select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario2-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario2-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:message>SFa entfernt</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e19-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="datafield" namespace="">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="tag"
                              namespace=""
                              select="'', ''"
                              separator="773"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind1"
                              namespace=""
                              select="'', ''"
                              separator="0"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind2"
                              namespace=""
                              select="'', ''"
                              separator="8"/>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="w"/>
                  <xsl:text>(AT-OBV)AC12345678</xsl:text>
               </xsl:element>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e19"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e19-doc ! ( node() )"><!--expected result--></xsl:variable>
      <!-- flag if @result-type is present but $x:result is not the right type -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}result-type-mismatch"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="false()"/>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="not($Q{urn:x-xspec:compile:impl}result-type-mismatch) and                      Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e19, $Q{http://www.jenitennison.com/xslt/xspec}result, '')"/>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario2-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>SFa entfernt</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:otherwise/>
         </xsl:choose>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e19"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..77308$$d bei Aufsätzen aus 264 generieren</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien_gitlab/exercises/ex06/ex06.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>77308$$d bei Aufsätzen aus 264 generieren</xsl:text>
         </xsl:element>
         <xsl:for-each select="1 to 10">
            <xsl:choose>
               <xsl:when test=". eq 1">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario1"/>
               </xsl:when>
               <xsl:when test=". eq 2">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario2"/>
               </xsl:when>
               <xsl:when test=". eq 3">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario3"/>
               </xsl:when>
               <xsl:when test=". eq 4">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario4"/>
               </xsl:when>
               <xsl:when test=". eq 5">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario5"/>
               </xsl:when>
               <xsl:when test=". eq 6">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario6"/>
               </xsl:when>
               <xsl:when test=". eq 7">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario7"/>
               </xsl:when>
               <xsl:when test=". eq 8">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario8"/>
               </xsl:when>
               <xsl:when test=". eq 9">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario9"/>
               </xsl:when>
               <xsl:when test=". eq 10">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario10"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:message terminate="yes">ERROR: Unhandled scenario invocation</xsl:message>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:for-each>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..alle Bedingungen erfüllt, vollständige 264, wiederholtes SFa</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario1</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien_gitlab/exercises/ex06/ex06.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>alle Bedingungen erfüllt, vollständige 264, wiederholtes SFa</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203naa a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Mainz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Stuttgart</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Ammerhuber</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d93e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203naa a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Mainz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Stuttgart</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Ammerhuber</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d93e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under '773 77308$$d bei Aufsätzen aus 264 generieren alle Bedingungen erfüllt, vollständige 264, wiederholtes SFa'): Context is an empty sequence.</xsl:message>
         </xsl:if>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:apply-templates select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario1-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario1-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:message>$$d ergänzt</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e51-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="datafield" namespace="">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="tag"
                              namespace=""
                              select="'', ''"
                              separator="773"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind1"
                              namespace=""
                              select="'', ''"
                              separator="0"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind2"
                              namespace=""
                              select="'', ''"
                              separator="8"/>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="i"/>
                  <xsl:text>Enthalten in</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="t"/>
                  <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="g"/>
                  <xsl:text>Seite 49-64</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="k"/>
                  <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="w"/>
                  <xsl:text>(AT-OBV)AC14555063</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="z"/>
                  <xsl:text>3980266567</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="d"/>
                  <xsl:text>Mainz ; Stuttgart : Ammerhuber, 2024</xsl:text>
               </xsl:element>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e51"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e51-doc ! ( node() )"><!--expected result--></xsl:variable>
      <!-- flag if @result-type is present but $x:result is not the right type -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}result-type-mismatch"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="false()"/>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch"><!--In case of data type mismatch, do not process @test--></xsl:when>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                                xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="record/datafield[@tag='773']"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                             xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="record/datafield[@tag='773']"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:sequence select="false()"/>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:message terminate="yes">ERROR in x:expect ('773 77308$$d bei Aufsätzen aus 264 generieren alle Bedingungen erfüllt, vollständige 264, wiederholtes SFa $$d ergänzt'): Boolean @test must not be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e51, $Q{urn:x-xspec:compile:impl}test-result, '')"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario1-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>$$d ergänzt</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
               <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
                  <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
                  <xsl:with-param name="report-name" select="'result'"/>
               </xsl:call-template>
            </xsl:when>
            <xsl:otherwise/>
         </xsl:choose>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e51"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario2"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..alle Bedingungen erfüllt, kein 264 SFa</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario2</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien_gitlab/exercises/ex06/ex06.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>alle Bedingungen erfüllt, kein 264 SFa</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203naa a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Ammerhuber</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d118e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203naa a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Ammerhuber</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d118e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under '773 77308$$d bei Aufsätzen aus 264 generieren alle Bedingungen erfüllt, kein 264 SFa'): Context is an empty sequence.</xsl:message>
         </xsl:if>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:apply-templates select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario2-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario2-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:message>$$d ergänzt</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e90-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="datafield" namespace="">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="tag"
                              namespace=""
                              select="'', ''"
                              separator="773"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind1"
                              namespace=""
                              select="'', ''"
                              separator="0"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind2"
                              namespace=""
                              select="'', ''"
                              separator="8"/>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="i"/>
                  <xsl:text>Enthalten in</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="t"/>
                  <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="g"/>
                  <xsl:text>Seite 49-64</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="k"/>
                  <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="w"/>
                  <xsl:text>(AT-OBV)AC14555063</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="z"/>
                  <xsl:text>3980266567</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="d"/>
                  <xsl:text>Ammerhuber, 2024</xsl:text>
               </xsl:element>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e90"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e90-doc ! ( node() )"><!--expected result--></xsl:variable>
      <!-- flag if @result-type is present but $x:result is not the right type -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}result-type-mismatch"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="false()"/>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch"><!--In case of data type mismatch, do not process @test--></xsl:when>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                                xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="record/datafield[@tag='773']"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                             xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="record/datafield[@tag='773']"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:sequence select="false()"/>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:message terminate="yes">ERROR in x:expect ('773 77308$$d bei Aufsätzen aus 264 generieren alle Bedingungen erfüllt, kein 264 SFa $$d ergänzt'): Boolean @test must not be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e90, $Q{urn:x-xspec:compile:impl}test-result, '')"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario2-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>$$d ergänzt</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
               <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
                  <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
                  <xsl:with-param name="report-name" select="'result'"/>
               </xsl:call-template>
            </xsl:when>
            <xsl:otherwise/>
         </xsl:choose>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e90"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario3"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..alle Bedingungen erfüllt, kein 264 SFb</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario3</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien_gitlab/exercises/ex06/ex06.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>alle Bedingungen erfüllt, kein 264 SFb</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203naa a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Mainz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Stuttgart</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d143e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203naa a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Mainz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Stuttgart</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d143e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under '773 77308$$d bei Aufsätzen aus 264 generieren alle Bedingungen erfüllt, kein 264 SFb'): Context is an empty sequence.</xsl:message>
         </xsl:if>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:apply-templates select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario3-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario3-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:message>$$d ergänzt</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e131-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="datafield" namespace="">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="tag"
                              namespace=""
                              select="'', ''"
                              separator="773"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind1"
                              namespace=""
                              select="'', ''"
                              separator="0"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind2"
                              namespace=""
                              select="'', ''"
                              separator="8"/>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="i"/>
                  <xsl:text>Enthalten in</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="t"/>
                  <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="g"/>
                  <xsl:text>Seite 49-64</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="k"/>
                  <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="w"/>
                  <xsl:text>(AT-OBV)AC14555063</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="z"/>
                  <xsl:text>3980266567</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="d"/>
                  <xsl:text>Mainz ; Stuttgart, 2024</xsl:text>
               </xsl:element>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e131"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e131-doc ! ( node() )"><!--expected result--></xsl:variable>
      <!-- flag if @result-type is present but $x:result is not the right type -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}result-type-mismatch"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="false()"/>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch"><!--In case of data type mismatch, do not process @test--></xsl:when>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                                xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="record/datafield[@tag='773']"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                             xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="record/datafield[@tag='773']"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:sequence select="false()"/>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:message terminate="yes">ERROR in x:expect ('773 77308$$d bei Aufsätzen aus 264 generieren alle Bedingungen erfüllt, kein 264 SFb $$d ergänzt'): Boolean @test must not be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e131, $Q{urn:x-xspec:compile:impl}test-result, '')"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario3-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>$$d ergänzt</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
               <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
                  <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
                  <xsl:with-param name="report-name" select="'result'"/>
               </xsl:call-template>
            </xsl:when>
            <xsl:otherwise/>
         </xsl:choose>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e131"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario4"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..alle Bedingungen erfüllt, kein 264 SFa, kein SFb</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario4</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien_gitlab/exercises/ex06/ex06.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>alle Bedingungen erfüllt, kein 264 SFa, kein SFb</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203naa a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d168e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203naa a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d168e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under '773 77308$$d bei Aufsätzen aus 264 generieren alle Bedingungen erfüllt, kein 264 SFa, kein SFb'): Context is an empty sequence.</xsl:message>
         </xsl:if>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:apply-templates select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario4-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario4-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:message>$$d ergänzt</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e168-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="datafield" namespace="">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="tag"
                              namespace=""
                              select="'', ''"
                              separator="773"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind1"
                              namespace=""
                              select="'', ''"
                              separator="0"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind2"
                              namespace=""
                              select="'', ''"
                              separator="8"/>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="i"/>
                  <xsl:text>Enthalten in</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="t"/>
                  <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="g"/>
                  <xsl:text>Seite 49-64</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="k"/>
                  <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="w"/>
                  <xsl:text>(AT-OBV)AC14555063</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="z"/>
                  <xsl:text>3980266567</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="d"/>
                  <xsl:text>2024</xsl:text>
               </xsl:element>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e168"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e168-doc ! ( node() )"><!--expected result--></xsl:variable>
      <!-- flag if @result-type is present but $x:result is not the right type -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}result-type-mismatch"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="false()"/>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch"><!--In case of data type mismatch, do not process @test--></xsl:when>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                                xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="record/datafield[@tag='773']"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                             xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="record/datafield[@tag='773']"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:sequence select="false()"/>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:message terminate="yes">ERROR in x:expect ('773 77308$$d bei Aufsätzen aus 264 generieren alle Bedingungen erfüllt, kein 264 SFa, kein SFb $$d ergänzt'): Boolean @test must not be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e168, $Q{urn:x-xspec:compile:impl}test-result, '')"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario4-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>$$d ergänzt</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
               <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
                  <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
                  <xsl:with-param name="report-name" select="'result'"/>
               </xsl:call-template>
            </xsl:when>
            <xsl:otherwise/>
         </xsl:choose>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e168"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario5"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..alle Bedingungen erfüllt, wiederholte 264#1</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario5</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien_gitlab/exercises/ex06/ex06.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>alle Bedingungen erfüllt, wiederholte 264#1</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203naa a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Mainz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Stuttgart</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Ammerhuber</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Graz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Leykam</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d193e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203naa a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Mainz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Stuttgart</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Ammerhuber</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Graz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Leykam</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d193e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under '773 77308$$d bei Aufsätzen aus 264 generieren alle Bedingungen erfüllt, wiederholte 264#1'): Context is an empty sequence.</xsl:message>
         </xsl:if>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:apply-templates select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario5-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario5-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:message>$$d mit Daten aus erster 264#1 ergänzt</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e218-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="datafield" namespace="">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="tag"
                              namespace=""
                              select="'', ''"
                              separator="773"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind1"
                              namespace=""
                              select="'', ''"
                              separator="0"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind2"
                              namespace=""
                              select="'', ''"
                              separator="8"/>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="i"/>
                  <xsl:text>Enthalten in</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="t"/>
                  <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="g"/>
                  <xsl:text>Seite 49-64</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="k"/>
                  <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="w"/>
                  <xsl:text>(AT-OBV)AC14555063</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="z"/>
                  <xsl:text>3980266567</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="d"/>
                  <xsl:text>Mainz ; Stuttgart : Ammerhuber, 2024</xsl:text>
               </xsl:element>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e218"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e218-doc ! ( node() )"><!--expected result--></xsl:variable>
      <!-- flag if @result-type is present but $x:result is not the right type -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}result-type-mismatch"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="false()"/>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch"><!--In case of data type mismatch, do not process @test--></xsl:when>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                                xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="record/datafield[@tag='773']"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                             xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="record/datafield[@tag='773']"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:sequence select="false()"/>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:message terminate="yes">ERROR in x:expect ('773 77308$$d bei Aufsätzen aus 264 generieren alle Bedingungen erfüllt, wiederholte 264#1 $$d mit Daten aus erster 264#1 ergänzt'): Boolean @test must not be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e218, $Q{urn:x-xspec:compile:impl}test-result, '')"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario5-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>$$d mit Daten aus erster 264#1 ergänzt</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
               <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
                  <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
                  <xsl:with-param name="report-name" select="'result'"/>
               </xsl:call-template>
            </xsl:when>
            <xsl:otherwise/>
         </xsl:choose>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e218"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario6"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..keine 264#1</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario6</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien_gitlab/exercises/ex06/ex06.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>keine 264#1</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203naa a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d218e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203naa a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d218e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under '773 77308$$d bei Aufsätzen aus 264 generieren keine 264#1'): Context is an empty sequence.</xsl:message>
         </xsl:if>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:apply-templates select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario6-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario6-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:message>unverändert</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e252-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="datafield" namespace="">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="tag"
                              namespace=""
                              select="'', ''"
                              separator="773"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind1"
                              namespace=""
                              select="'', ''"
                              separator="0"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind2"
                              namespace=""
                              select="'', ''"
                              separator="8"/>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="i"/>
                  <xsl:text>Enthalten in</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="t"/>
                  <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="g"/>
                  <xsl:text>Seite 49-64</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="k"/>
                  <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="w"/>
                  <xsl:text>(AT-OBV)AC14555063</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="z"/>
                  <xsl:text>3980266567</xsl:text>
               </xsl:element>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e252"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e252-doc ! ( node() )"><!--expected result--></xsl:variable>
      <!-- flag if @result-type is present but $x:result is not the right type -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}result-type-mismatch"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="false()"/>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch"><!--In case of data type mismatch, do not process @test--></xsl:when>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                                xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="record/datafield[@tag='773']"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                             xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="record/datafield[@tag='773']"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:sequence select="false()"/>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:message terminate="yes">ERROR in x:expect ('773 77308$$d bei Aufsätzen aus 264 generieren keine 264#1 unverändert'): Boolean @test must not be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e252, $Q{urn:x-xspec:compile:impl}test-result, '')"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario6-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>unverändert</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
               <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
                  <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
                  <xsl:with-param name="report-name" select="'result'"/>
               </xsl:call-template>
            </xsl:when>
            <xsl:otherwise/>
         </xsl:choose>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e252"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario7"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..NAK</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario7</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien_gitlab/exercises/ex06/ex06.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>NAK</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203naa a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Mainz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Stuttgart</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Ammerhuber</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Graz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Leykam</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="970"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="2"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="d"/>
                        <xsl:text>NAK</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d243e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203naa a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Mainz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Stuttgart</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Ammerhuber</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Graz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Leykam</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="970"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="2"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="d"/>
                        <xsl:text>NAK</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d243e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under '773 77308$$d bei Aufsätzen aus 264 generieren NAK'): Context is an empty sequence.</xsl:message>
         </xsl:if>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:apply-templates select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario7-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario7-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:message>unverändert</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e303-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="datafield" namespace="">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="tag"
                              namespace=""
                              select="'', ''"
                              separator="773"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind1"
                              namespace=""
                              select="'', ''"
                              separator="0"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind2"
                              namespace=""
                              select="'', ''"
                              separator="8"/>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="i"/>
                  <xsl:text>Enthalten in</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="t"/>
                  <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="g"/>
                  <xsl:text>Seite 49-64</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="k"/>
                  <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="w"/>
                  <xsl:text>(AT-OBV)AC14555063</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="z"/>
                  <xsl:text>3980266567</xsl:text>
               </xsl:element>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e303"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e303-doc ! ( node() )"><!--expected result--></xsl:variable>
      <!-- flag if @result-type is present but $x:result is not the right type -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}result-type-mismatch"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="false()"/>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch"><!--In case of data type mismatch, do not process @test--></xsl:when>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                                xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="record/datafield[@tag='773']"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                             xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="record/datafield[@tag='773']"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:sequence select="false()"/>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:message terminate="yes">ERROR in x:expect ('773 77308$$d bei Aufsätzen aus 264 generieren NAK unverändert'): Boolean @test must not be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e303, $Q{urn:x-xspec:compile:impl}test-result, '')"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario7-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>unverändert</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
               <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
                  <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
                  <xsl:with-param name="report-name" select="'result'"/>
               </xsl:call-template>
            </xsl:when>
            <xsl:otherwise/>
         </xsl:choose>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e303"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario8"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..Monografie</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario8</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien_gitlab/exercises/ex06/ex06.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Monografie</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203nam a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Mainz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Stuttgart</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Ammerhuber</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Graz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Leykam</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d268e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203nam a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Mainz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Stuttgart</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Ammerhuber</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Graz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Leykam</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d268e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under '773 77308$$d bei Aufsätzen aus 264 generieren Monografie'): Context is an empty sequence.</xsl:message>
         </xsl:if>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:apply-templates select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario8-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario8-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:message>unverändert</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e351-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="datafield" namespace="">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="tag"
                              namespace=""
                              select="'', ''"
                              separator="773"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind1"
                              namespace=""
                              select="'', ''"
                              separator="0"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind2"
                              namespace=""
                              select="'', ''"
                              separator="8"/>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="i"/>
                  <xsl:text>Enthalten in</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="t"/>
                  <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="g"/>
                  <xsl:text>Seite 49-64</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="k"/>
                  <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="w"/>
                  <xsl:text>(AT-OBV)AC14555063</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="z"/>
                  <xsl:text>3980266567</xsl:text>
               </xsl:element>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e351"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e351-doc ! ( node() )"><!--expected result--></xsl:variable>
      <!-- flag if @result-type is present but $x:result is not the right type -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}result-type-mismatch"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="false()"/>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch"><!--In case of data type mismatch, do not process @test--></xsl:when>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                                xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="record/datafield[@tag='773']"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                             xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="record/datafield[@tag='773']"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:sequence select="false()"/>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:message terminate="yes">ERROR in x:expect ('773 77308$$d bei Aufsätzen aus 264 generieren Monografie unverändert'): Boolean @test must not be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e351, $Q{urn:x-xspec:compile:impl}test-result, '')"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario8-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>unverändert</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
               <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
                  <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
                  <xsl:with-param name="report-name" select="'result'"/>
               </xsl:call-template>
            </xsl:when>
            <xsl:otherwise/>
         </xsl:choose>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e351"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario9"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..keine 773 $$iEnthalten in</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario9</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien_gitlab/exercises/ex06/ex06.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>keine 773 $$iEnthalten in</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203naa a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Mainz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Stuttgart</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Ammerhuber</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Graz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Leykam</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Sonderdruck aus</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d293e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203naa a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Mainz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Stuttgart</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Ammerhuber</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Graz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Leykam</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Sonderdruck aus</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d293e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under '773 77308$$d bei Aufsätzen aus 264 generieren keine 773 $$iEnthalten in'): Context is an empty sequence.</xsl:message>
         </xsl:if>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:apply-templates select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario9-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario9-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:message>unverändert</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e399-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="datafield" namespace="">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="tag"
                              namespace=""
                              select="'', ''"
                              separator="773"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind1"
                              namespace=""
                              select="'', ''"
                              separator="0"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind2"
                              namespace=""
                              select="'', ''"
                              separator="8"/>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="i"/>
                  <xsl:text>Sonderdruck aus</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="t"/>
                  <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="g"/>
                  <xsl:text>Seite 49-64</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="k"/>
                  <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="w"/>
                  <xsl:text>(AT-OBV)AC14555063</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="z"/>
                  <xsl:text>3980266567</xsl:text>
               </xsl:element>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e399"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e399-doc ! ( node() )"><!--expected result--></xsl:variable>
      <!-- flag if @result-type is present but $x:result is not the right type -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}result-type-mismatch"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="false()"/>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch"><!--In case of data type mismatch, do not process @test--></xsl:when>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                                xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="record/datafield[@tag='773']"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                             xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="record/datafield[@tag='773']"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:sequence select="false()"/>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:message terminate="yes">ERROR in x:expect ('773 77308$$d bei Aufsätzen aus 264 generieren keine 773 $$iEnthalten in unverändert'): Boolean @test must not be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e399, $Q{urn:x-xspec:compile:impl}test-result, '')"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario9-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>unverändert</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
               <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
                  <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
                  <xsl:with-param name="report-name" select="'result'"/>
               </xsl:call-template>
            </xsl:when>
            <xsl:otherwise/>
         </xsl:choose>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e399"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario10"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..773 $$d vorhanden</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario10</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien_gitlab/exercises/ex06/ex06.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>773 $$d vorhanden</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203naa a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Mainz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Stuttgart</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Ammerhuber</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Graz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Leykam</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="d"/>
                        <xsl:text>München : Berger, 2023</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d318e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01203naa a2200349 c 4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Mainz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Stuttgart</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Ammerhuber</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="264"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Graz</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>Leykam</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="c"/>
                        <xsl:text>2024</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="d"/>
                        <xsl:text>München : Berger, 2023</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 49-64</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC14555063</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                       xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>3980266567</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d318e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under '773 77308$$d bei Aufsätzen aus 264 generieren 773 $$d vorhanden'): Context is an empty sequence.</xsl:message>
         </xsl:if>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:apply-templates select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario10-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-scenario10-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:message>unverändert</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e449-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="datafield" namespace="">
               <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="tag"
                              namespace=""
                              select="'', ''"
                              separator="773"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind1"
                              namespace=""
                              select="'', ''"
                              separator="0"/>
               <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              name="ind2"
                              namespace=""
                              select="'', ''"
                              separator="8"/>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="i"/>
                  <xsl:text>Enthalten in</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="t"/>
                  <xsl:text>Kammermusik in "gemischten" Besetzungen ; herausgegeben von Kristina Pfarr und Karl Böhmer unter Mitwirkung des Jubilars</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="d"/>
                  <xsl:text>München : Berger, 2023</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="g"/>
                  <xsl:text>Seite 49-64</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="k"/>
                  <xsl:text>Schloß Engers Colloquia zur Kammermusik</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="w"/>
                  <xsl:text>(AT-OBV)AC14555063</xsl:text>
               </xsl:element>
               <xsl:element name="subfield" namespace="">
                  <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:attribute xmlns:marc="http://www.loc.gov/MARC21/slim"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 name="code"
                                 namespace=""
                                 select="'', ''"
                                 separator="z"/>
                  <xsl:text>3980266567</xsl:text>
               </xsl:element>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e449"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e449-doc ! ( node() )"><!--expected result--></xsl:variable>
      <!-- flag if @result-type is present but $x:result is not the right type -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}result-type-mismatch"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="false()"/>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch"><!--In case of data type mismatch, do not process @test--></xsl:when>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                                xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="record/datafield[@tag='773']"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:marc="http://www.loc.gov/MARC21/slim"
                             xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="record/datafield[@tag='773']"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:sequence select="false()"/>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:message terminate="yes">ERROR in x:expect ('773 77308$$d bei Aufsätzen aus 264 generieren 773 $$d vorhanden unverändert'): Boolean @test must not be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e449, $Q{urn:x-xspec:compile:impl}test-result, '')"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-scenario10-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>unverändert</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:namespace name="marc">http://www.loc.gov/MARC21/slim</xsl:namespace>
                     <xsl:attribute name="test" namespace="">record/datafield[@tag='773']</xsl:attribute>
                  </xsl:element>
               </xsl:element>
               <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
                  <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
                  <xsl:with-param name="report-name" select="'result'"/>
               </xsl:call-template>
            </xsl:when>
            <xsl:otherwise/>
         </xsl:choose>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e449"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
</xsl:stylesheet>
