<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei"
    version="2.0">
    
    <!-- <xsl:output method="xml" omit-xml-declaration="yes" indent="yes" /> -->

    
    <xsl:template match="tei:TEI">
                     <div class="row">
                         <div class="col">
                             <h4 class="title-page">About the manuscript page:</h4>
                             <span class="desc">
                             <xsl:value-of select="//tei:sourceDesc"/>
                             </span>
                             <span class="desc">
                            <h5 style="color:grey; font-size: 20px; font-family: 'Times New Roman',Times,Serif;">License:</h5>
                             <xsl:value-of select="//tei:licence"/> <!-- You can change the way the metadata is visualised as well-->
                             </span>
                         </div>
                         <div class="col">
                            <ul> 
                                <li class="desc">Total number of modifications: 
                                    <xsl:value-of select="count(//tei:del|//tei:add)" /> <!-- Counts all the add and del elements, and puts it in a list item -->
                                </li>
                                <li class="desc">Total number of additions: 
                                    <!-- count the additions only -->
                                    <xsl:value-of select="count(//tei:add)" />
                                </li>
                                <!-- add other list items in which you count things, such as the modifications made by Percy -->
                                <li class="desc">Total number of deletions:
                                    <xsl:value-of select="count(//tei:del)"/>
                                </li>
                                <li class="desc">Total number of modifications by Percy:
                                    <xsl:value-of select="count(//tei:del[@hand='#PBS']|//tei:add[@hand='#PBS'])" />
                                </li>
                                <li class="desc">Total number of modifications by Mary:
                                    <xsl:value-of select="count(//tei:del[@hand='#MWS']|//tei:add[@hand='#MWS'])" />
                                </li>
                            </ul>
                        </div>
                     </div>
        <hr/>
    </xsl:template>
    

</xsl:stylesheet>