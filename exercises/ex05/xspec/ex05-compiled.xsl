<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="#all"
                version="3.0">
   <!-- the tested stylesheet -->
   <xsl:import href="file:/home/ss/projects/teaching/x-technologien/exercises/ex05/ex05_solution.xsl"/>
   <!-- XSpec library modules providing tools -->
   <xsl:include href="file:/home/ss/opt/xspec/src/common/runtime-utils.xsl"/>
   <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}stylesheet-uri"
                 as="Q{http://www.w3.org/2001/XMLSchema}anyURI">file:/home/ss/projects/teaching/x-technologien/exercises/ex05/ex05_solution.xsl</xsl:variable>
   <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}xspec-uri"
                 as="Q{http://www.w3.org/2001/XMLSchema}anyURI">file:/home/ss/projects/teaching/x-technologien/exercises/ex05/ex05.xspec</xsl:variable>
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
            <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien/exercises/ex05/ex05.xspec</xsl:attribute>
            <xsl:attribute name="stylesheet" namespace="">file:/home/ss/projects/teaching/x-technologien/exercises/ex05/ex05_solution.xsl</xsl:attribute>
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
      <xsl:message>pos19</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien/exercises/ex05/ex05.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>pos19</xsl:text>
         </xsl:element>
         <xsl:for-each select="1 to 9">
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
               <xsl:when test=". eq 4">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario4"/>
               </xsl:when>
               <xsl:when test=". eq 5">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario5"/>
               </xsl:when>
               <xsl:when test=". eq 6">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario6"/>
               </xsl:when>
               <xsl:when test=". eq 7">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario7"/>
               </xsl:when>
               <xsl:when test=". eq 8">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario8"/>
               </xsl:when>
               <xsl:when test=". eq 9">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario9"/>
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
      <xsl:message>..Stücktitel, verknüpft</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario1</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien/exercises/ex05/ex05.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Stücktitel, verknüpft</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01414nam a2200421 cx4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="830"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC12345678</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d60e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01414nam a2200421 cx4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="830"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC12345678</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d60e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under 'pos19 Stücktitel, verknüpft'): Context is an empty sequence.</xsl:message>
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
      <xsl:message>LDR/19=b</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e11-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="leader" namespace="">
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:text>01414nam a2200421 cb4500</xsl:text>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e11"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e11-doc ! ( node() )"><!--expected result--></xsl:variable>
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
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="record/leader"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="record/leader"
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
               <xsl:message terminate="yes">ERROR in x:expect ('pos19 Stücktitel, verknüpft LDR/19=b'): Boolean @test must not be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e11, $Q{urn:x-xspec:compile:impl}test-result, '')"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario1-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>LDR/19=b</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="test" namespace="">record/leader</xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="test" namespace="">record/leader</xsl:attribute>
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
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e11"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario2"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..Stücktitel, unverknüpft</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario2</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien/exercises/ex05/ex05.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Stücktitel, unverknüpft</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01414nam a2200421 cx4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="490"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Generische Taschenbücher</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="v"/>
                        <xsl:text>1</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d83e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01414nam a2200421 cx4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="490"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Generische Taschenbücher</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="v"/>
                        <xsl:text>1</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d83e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under 'pos19 Stücktitel, unverknüpft'): Context is an empty sequence.</xsl:message>
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
      <xsl:message>unverändert</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e24-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="leader" namespace="">
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:text>01414nam a2200421 cx4500</xsl:text>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e24"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e24-doc ! ( node() )"><!--expected result--></xsl:variable>
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
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="record/leader"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="record/leader"
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
               <xsl:message terminate="yes">ERROR in x:expect ('pos19 Stücktitel, unverknüpft unverändert'): Boolean @test must not be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e24, $Q{urn:x-xspec:compile:impl}test-result, '')"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario2-expect1</xsl:attribute>
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
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="test" namespace="">record/leader</xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="test" namespace="">record/leader</xsl:attribute>
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
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e24"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..TAT, verknüpft</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien/exercises/ex05/ex05.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>TAT, verknüpft</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01414nam a2200421 cx4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC12345678</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d106e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01414nam a2200421 cx4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC12345678</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d106e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under 'pos19 TAT, verknüpft'): Context is an empty sequence.</xsl:message>
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
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario3-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:message>LDR/19=c</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e35-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="leader" namespace="">
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:text>01414nam a2200421 cc4500</xsl:text>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e35"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e35-doc ! ( node() )"><!--expected result--></xsl:variable>
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
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="record/leader"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="record/leader"
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
               <xsl:message terminate="yes">ERROR in x:expect ('pos19 TAT, verknüpft LDR/19=c'): Boolean @test must not be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e35, $Q{urn:x-xspec:compile:impl}test-result, '')"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario3-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>LDR/19=c</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="test" namespace="">record/leader</xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="test" namespace="">record/leader</xsl:attribute>
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
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e35"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario4"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..TAT in Reihe (830), verknüpft</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario4</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien/exercises/ex05/ex05.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>TAT in Reihe (830), verknüpft</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01414nam a2200421 cx4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC12345678</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="830"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC12345678</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d129e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01414nam a2200421 cx4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC12345678</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="830"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC12345678</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d129e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under 'pos19 TAT in Reihe (830), verknüpft'): Context is an empty sequence.</xsl:message>
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
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario4-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario4-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:message>LDR/19=c</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e49-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="leader" namespace="">
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:text>01414nam a2200421 cc4500</xsl:text>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e49"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e49-doc ! ( node() )"><!--expected result--></xsl:variable>
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
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="record/leader"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="record/leader"
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
               <xsl:message terminate="yes">ERROR in x:expect ('pos19 TAT in Reihe (830), verknüpft LDR/19=c'): Boolean @test must not be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e49, $Q{urn:x-xspec:compile:impl}test-result, '')"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario4-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>LDR/19=c</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="test" namespace="">record/leader</xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="test" namespace="">record/leader</xsl:attribute>
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
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e49"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario5"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..MtM mit Gesamttitel</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario5</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien/exercises/ex05/ex05.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>MtM mit Gesamttitel</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01414nam a2200421 ca4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="830"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC12345678</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d152e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01414nam a2200421 ca4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="830"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC12345678</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d152e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under 'pos19 MtM mit Gesamttitel'): Context is an empty sequence.</xsl:message>
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
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario5-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario5-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:message>bleibt unverändert</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e60-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="leader" namespace="">
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:text>01414nam a2200421 ca4500</xsl:text>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e60"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e60-doc ! ( node() )"><!--expected result--></xsl:variable>
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
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="record/leader"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="record/leader"
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
               <xsl:message terminate="yes">ERROR in x:expect ('pos19 MtM mit Gesamttitel bleibt unverändert'): Boolean @test must not be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e60, $Q{urn:x-xspec:compile:impl}test-result, '')"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario5-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>bleibt unverändert</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="test" namespace="">record/leader</xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="test" namespace="">record/leader</xsl:attribute>
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
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e60"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario6"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..Sonderdruck</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario6</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien/exercises/ex05/ex05.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Sonderdruck</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01414nam a2200421 cc4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Sonderdruck aus</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Neue Forschungen zur Geschichte der Pfarre
              Tulln-St. Stephan</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Beiträge zur Kirchengeschichte
              Niederösterreichs ; 17</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Geschichtliche Beilagen zum St. Pöltner
              Diözesanblatt ; 34</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC12345678</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d175e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01414nam a2200421 cc4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Sonderdruck aus</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Neue Forschungen zur Geschichte der Pfarre
              Tulln-St. Stephan</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Beiträge zur Kirchengeschichte
              Niederösterreichs ; 17</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Geschichtliche Beilagen zum St. Pöltner
              Diözesanblatt ; 34</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC12345678</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d175e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under 'pos19 Sonderdruck'): Context is an empty sequence.</xsl:message>
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
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario6-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario6-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:message>LDR/19=#</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e79-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="leader" namespace="">
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:text>01414nam a2200421 c 4500</xsl:text>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e79"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e79-doc ! ( node() )"><!--expected result--></xsl:variable>
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
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="record/leader"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="record/leader"
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
               <xsl:message terminate="yes">ERROR in x:expect ('pos19 Sonderdruck LDR/19=#'): Boolean @test must not be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e79, $Q{urn:x-xspec:compile:impl}test-result, '')"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario6-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>LDR/19=#</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="test" namespace="">record/leader</xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="test" namespace="">record/leader</xsl:attribute>
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
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e79"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario7"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..LDR/06!=m (fR etc.)'</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario7</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien/exercises/ex05/ex05.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>LDR/06!=m (fR etc.)'</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01414nas a2200421 cx4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="830"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC12345678</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d198e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01414nas a2200421 cx4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="830"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC12345678</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d198e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under 'pos19 LDR/06!=m (fR etc.)''): Context is an empty sequence.</xsl:message>
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
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario7-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario7-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:message>LDR/19=#</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e90-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="leader" namespace="">
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:text>01414nas a2200421 c 4500</xsl:text>
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
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="record/leader"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="record/leader"
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
               <xsl:message terminate="yes">ERROR in x:expect ('pos19 LDR/06!=m (fR etc.)' LDR/19=#'): Boolean @test must not be accompanied by @as, @href, @select, or child node.</xsl:message>
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
         <xsl:attribute name="id" namespace="">scenario1-scenario7-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>LDR/19=#</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="test" namespace="">record/leader</xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="test" namespace="">record/leader</xsl:attribute>
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
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario8"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..Aufsatz</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario8</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien/exercises/ex05/ex05.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Aufsatz</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01414naa a2200421 cx4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Musikphilologie / herausgegeben von Bernhard R.
              Appel und Reinmar Emans</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="d"/>
                        <xsl:text>Laaber : Laaber, 2017</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 13-21</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Kompendien Musik ; Band 3</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC08074101</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>9783890077239</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d221e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>01414naa a2200421 cx4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Enthalten in</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Musikphilologie / herausgegeben von Bernhard R.
              Appel und Reinmar Emans</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="d"/>
                        <xsl:text>Laaber : Laaber, 2017</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>Seite 13-21</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="k"/>
                        <xsl:text>Kompendien Musik ; Band 3</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC08074101</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>9783890077239</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d221e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under 'pos19 Aufsatz'): Context is an empty sequence.</xsl:message>
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
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario8-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario8-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:message>LDR/19=#</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e113-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="leader" namespace="">
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:text>01414naa a2200421 c 4500</xsl:text>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e113"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e113-doc ! ( node() )"><!--expected result--></xsl:variable>
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
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="record/leader"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="record/leader"
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
               <xsl:message terminate="yes">ERROR in x:expect ('pos19 Aufsatz LDR/19=#'): Boolean @test must not be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e113, $Q{urn:x-xspec:compile:impl}test-result, '')"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario8-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>LDR/19=#</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="test" namespace="">record/leader</xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="test" namespace="">record/leader</xsl:attribute>
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
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e113"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario9"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..Sonderdruck in Reihe</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario9</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/ss/projects/teaching/x-technologien/exercises/ex05/ex05.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Sonderdruck in Reihe</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>00754nam a2200229 cx4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Sonderdruck aus</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Zeitschrift für Astrophysik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>51.1961</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="830"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC06732359</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="v"/>
                        <xsl:text>9</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d244e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="leader" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>00754nam a2200229 cx4500</xsl:text>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="773"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="8"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="i"/>
                        <xsl:text>Sonderdruck aus</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="t"/>
                        <xsl:text>Zeitschrift für Astrophysik</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="g"/>
                        <xsl:text>51.1961</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="830"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="w"/>
                        <xsl:text>(AT-OBV)AC06732359</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="v"/>
                        <xsl:text>9</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d244e0-doc ! ( node() )"/>
         <xsl:if test="empty($Q{http://www.jenitennison.com/xslt/xspec}context)">
            <xsl:message terminate="yes">ERROR in x:context (under 'pos19 Sonderdruck in Reihe'): Context is an empty sequence.</xsl:message>
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
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario9-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario9-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:message>LDR/19=b</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e133-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="leader" namespace="">
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:text>00754nam a2200229 cb4500</xsl:text>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d54e133"
                    select="$Q{urn:x-xspec:compile:impl}expect-d54e133-doc ! ( node() )"><!--expected result--></xsl:variable>
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
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="record/leader"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="record/leader"
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
               <xsl:message terminate="yes">ERROR in x:expect ('pos19 Sonderdruck in Reihe LDR/19=b'): Boolean @test must not be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d54e133, $Q{urn:x-xspec:compile:impl}test-result, '')"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario9-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>LDR/19=b</xsl:text>
         </xsl:element>
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}result-type-mismatch">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="result-type" namespace="">$x:result instance of </xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="test" namespace="">record/leader</xsl:attribute>
                  </xsl:element>
               </xsl:element>
            </xsl:when>
            <xsl:when test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
               <xsl:element name="expect-test-wrap" namespace="">
                  <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
                     <xsl:attribute name="test" namespace="">record/leader</xsl:attribute>
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
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d54e133"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
</xsl:stylesheet>
