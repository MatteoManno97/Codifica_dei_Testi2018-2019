<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
       <!--CARTOLINA 221-->
       <xsl:if test="//TEI[@n=3]">
        <html>
            <head>
                <title>
                    
                    <xsl:value-of select="//TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                </title>
                <link rel="stylesheet" type="text/css" href="css/stile.css"/>
                <script src="mostra221.js" charset="utf-8"> </script>
                <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
                <script type="text/javascript" src="jquery.maphilight.min.js"></script>
                <script type="text/javascript">$(function() {
                    $('.Img').maphilight();
                    });
                </script>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link href='https://fonts.googleapis.com/css?family=Alice' rel='stylesheet'/>
            </head>
            <body>
                
                <div class="header">
                    <h1>Progetto Cartoline per Codifica dei testi</h1>
                    <xsl:for-each select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:titleStmt">
                        <xsl:for-each select="tei:respStmt[position()=1] ">
                            <h2><xsl:value-of select="tei:resp"/>&#160;
                                <xsl:for-each select="tei:name">
                                    <xsl:if test="position()>1">
                                        &#160;e&#160;
                                    </xsl:if>
                                    <xsl:value-of select="."/>
                                </xsl:for-each></h2>
                        </xsl:for-each>
                    </xsl:for-each>  
                </div>
                
                <div class="topnav">
                    <a href="Cartolina172.html#Cartolina172" id="Cartolina172">Cartolina 172</a>
                    <a href="Cartolina194.html#Cartolina194" id="Cartolina194">Cartolina 194</a>
                    <a href="Cartolina221.html#Cartolina221" id="Cartolina221">Cartolina 221</a>
                </div>
                
                <div class="row">
                    <div id="ImmagineTestoF" class="column">
                        <h3>Fronte</h3>
                        <div id="immagine_f">
                          
                             
                            <xsl:element name="img">
                                
                                <xsl:attribute name="src"><xsl:value-of select="TEI[@n='3']/tei:facsimile/tei:surface[@n='f']/tei:graphic/@url"/></xsl:attribute>
                                <xsl:attribute name="id"><xsl:value-of select="TEI[@n='3']/tei:facsimile/tei:surface[@n='f']/tei:graphic/@xml:id"/></xsl:attribute>
                                <xsl:attribute name="class">Img</xsl:attribute>
                                <xsl:attribute name="usemap">#map3_f</xsl:attribute>
                               
                             </xsl:element>    
                                    
                                    
                            <xsl:element name="map">
                                <xsl:attribute name="name">map3_f</xsl:attribute>
                                <xsl:attribute name="class">map3_f</xsl:attribute>
                             
                                <xsl:apply-templates select="//TEI[@n='3']/tei:facsimile/tei:surface[@n='f']/tei:zone"/>
                             
                            </xsl:element>        
                                
                       </div>
                       <div id="blocco1">
                           <h3 class="h3Tab">Messaggio</h3>
                           <table>
                               <tr> <td><xsl:value-of select="TEI[@n='3']/tei:text/tei:body/tei:div[@xml:id='fronte221']/tei:ab[@n='1']"/></td></tr>
                            </table>
                                  
                            
                       </div> 
                        <div id="blocco2">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='3']/tei:text/tei:body/tei:div[@xml:id='fronte221']/tei:ab[@n='2']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco3">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='3']/tei:text/tei:body/tei:div[@xml:id='fronte221']/tei:ab[@n='3']"/></td></tr>
                            </table>
                            
                            
                        </div>
                   
                   
                    
                    </div>
                    <div id="ImmagineTestoR" class="column">
                        <h3>Retro</h3>
                        <div id="immagine_r">
                            
                            
                            <xsl:element name="img">
                                
                                <xsl:attribute name="src"><xsl:value-of select="TEI[@n='3']/tei:facsimile/tei:surface[@n='r']/tei:graphic/@url"/></xsl:attribute>
                                <xsl:attribute name="id"><xsl:value-of select="TEI[@n='3']/tei:facsimile/tei:surface[@n='r']/tei:graphic/@xml:id"/></xsl:attribute>
                                <xsl:attribute name="class">Img</xsl:attribute>
                                <xsl:attribute name="usemap">#map3_r</xsl:attribute>
                                
                            </xsl:element>    
                            
                            
                            <xsl:element name="map">
                                <xsl:attribute name="name">map3_r</xsl:attribute>
                                <xsl:attribute name="class">map3_r</xsl:attribute>
                                
                                <xsl:apply-templates select="//TEI[@n='3']/tei:facsimile/tei:surface[@n='r']/tei:zone"/>
                                
                            </xsl:element>        
                            
                        </div>
                        <div id="blocco4">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='3']/tei:text/tei:front/tei:div[@type='postmark']/tei:p/tei:stamp[@type='postage']"/></td></tr>
                            </table>
                            
                            
                        </div> 
                        <div id="blocco5">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='3']/tei:text/tei:front/tei:div[@type='postmark']/tei:p/tei:stamp[@type='postmark']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco6">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='3']/tei:text/tei:body/tei:div[@xml:id='retro221']/tei:div[@type='opener']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco7">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='3']/tei:text/tei:body/tei:div[@xml:id='retro221']/tei:div[@type='letter-body']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco8">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='3']/tei:text/tei:body/tei:div[@xml:id='retro221']/tei:div[@type='closer']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco9">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='3']/tei:text/tei:front/tei:div[@type='stampe']/tei:ab[@xml:id='scritta_r1']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco10">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='3']/tei:text/tei:front/tei:div[@type='stampe']/tei:ab[@xml:id='scritta_r2']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco11">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='3']/tei:text/tei:body/tei:div[@xml:id='retro221']/tei:div[@type='destination']/tei:p/tei:address"/></td></tr>
                            </table>
                            
                            
                        </div>
                    </div>
                </div>
                
                        
                        
                       
                       
                        
                        
                <div class="row">    
                
               
               
                   <div id="InfoCartolina" class="column2">
                       <div id="edizione">
                           <h3 class="h3Tab">Edizione</h3>
                           <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:edition"/> <br/>
                           <table>
                               <xsl:for-each select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:editionStmt">
                                   
                                   <xsl:for-each select="tei:respStmt">
                                       <tr>
                                           <td><xsl:value-of select="tei:resp"/>:
                                           <xsl:for-each select="tei:name">
                                               <xsl:if test="position()>1">
                                                   &#160;e&#160;
                                               </xsl:if>
                                                   <xsl:value-of select="."/>
                                               
                                               
                                           </xsl:for-each>
                                           </td>
                                       </tr>  
                                   </xsl:for-each>
                               </xsl:for-each>
                               
                               <tr>
                                   <td>Editore: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:publisher"/></td>
                               </tr>
                               <tr>
                                   <td>Luogo di pubblicazione: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:pubPlace"/></td>
                               </tr>
                               <tr>
                                   <td>Disponibilità: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:availability"/></td>
                                   
                               </tr>
                               <tr>
                                   <td>Data: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:date"/></td>
                                   
                               </tr>
                               <tr>
                                   <td>Distributore: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:distributor"/></td>
                                   
                               </tr>
                               <tr>
                                   <td>
                                       <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:address/tei:addrLine[1]"/>
                                   </td>
                                   
                               </tr>
                               
                           </table>
                       </div>
                     <div id="riferimenti">
                         <h3 class="h3Tab">Riferimenti immagine cartolina</h3>
                         <table>
                             <tr>
                                 <td>Titolo: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:title"/></td>
                             </tr>
                             <tr>
                                 <td>Autore: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:author"/></td>
                             </tr>
                             <tr>
                                 <td>Produttore della cartolina: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:publisher"/></td>
                             </tr>
                             <tr>
                                 <td>Luogo di pubblicazione: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:pubPlace"/></td>
                             </tr>
                             <tr>
                                 <td>Data di pubblicazione: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:date"/></td>
                             </tr>
                             <tr>
                                 <td>Descrizione dell'immagine: <xsl:value-of select="TEI[@n='3']/tei:text/tei:body/tei:div[@xml:id='fronte221']/tei:figure/tei:figDesc"/></td>
                             </tr>
                         </table>
                         
                     </div>
                     <div id="Luogoconservazione">
                         <h3 class="h3Tab">Luogo di conservazione</h3>
                         <table>
                             <tr>
                                 <td>Nazione: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:country"/></td>
                             </tr>
                             <tr>
                                 <td>Città: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:settlement"/></td>
                             </tr>
                             <tr>
                                 <td>Luogo: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:repository"/></td>
                             </tr>
                             <tr>
                                 <td>Codice Identificativo: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:idno"/></td>
                             </tr>
                         </table>
                     </div>
                     <div id="descrizioneCartolina">
                         <h3 class="h3Tab">Descrizione della cartolina</h3>
                         <table>
                             <tr>
                                 <td>Tipologia: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:summary"/></td>
                             </tr>
                             <tr>
                                 <td>Lingua: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:textLang"/></td>
                             </tr>
                             <tr>
                                 <td>Sintesi: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem[@n='r']/tei:title"/></td>
                             </tr>
                             <tr>
                                 <td>Stato: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition"/></td>
                             </tr>
                          
                             <tr>
                                 <td>Materiale: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:material"/></td>
                             </tr>
                             <tr>
                                 <td>Altezza: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:dimensions/tei:height"/></td>
                             </tr>
                             <tr>
                                 <td>Larghezza: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:dimensions/tei:width"/></td>
                             </tr>
                             <tr>
                                 <td>Particolarità: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:stamp"/></td>
                             </tr>
                         </table>
                     </div>
                     
                     <div id="persone">
                         <h3 class="h3Tab">Persone</h3>
                         <table>
                             <tr>
                                 <th>Mittente:</th>
                                 <th>Destinatario:</th>
                             </tr>
                             
                                
                             <tr>   
                                 <td> <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='G']/tei:persName/tei:forename"/></td>
                             
                                 <td> <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='AT']/tei:persName/tei:forename"/></td>
                             </tr>
                             <tr>
                                 <td>Sesso: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='G']/tei:sex"/></td>
                                 <td>Sesso: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='AT']/tei:sex"/></td>
                             </tr>
                             <tr>
                                 <td>Note: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='G']/tei:note"/></td>
                                 <td>Note: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='AT']/tei:note"/></td>
                             </tr>
                         </table>
                     </div>
                     
                     <div id="PartenzaArrivo">
                         <h3 class="h3Tab">Partenza e arrivo</h3>
                         <table>
                             <tr>
                                 <td>Luogo di origine: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='ME']/tei:placeName"/> (<xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='ME']/tei:district[@type='provincia']"/>),
                                     <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='ME']/tei:region"/>,
                                     <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='ME']/tei:country"/>
                                 </td>
                             </tr>
                             <tr>
                                 <td>Luogo di destinazione: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='RV']/tei:placeName"/> (<xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='RV']/tei:district[@type='provincia']"/>),
                                     <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='RV']/tei:region"/>,
                                     <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='RV']/tei:country"/>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     Spedita il: <xsl:value-of select="TEI[@n='3']/tei:teiHeader/tei:profileDesc/tei:correspDesc/tei:correspAction[@type='sent']/tei:date"/>
                                 </td>
                             </tr>
                         </table>
                     </div>
                     <div id="transcrizione">
                         <h3 class="h3Tab">Messaggio della cartolina</h3>
                         <table>
                             <tr>
                                 <td><xsl:value-of select="TEI[@n='3']/tei:text/tei:body/tei:div[@xml:id='retro221']/tei:div[@type='opener']/tei:ab"/></td>
                             </tr>
                             <tr>
                                 
                                 <td><xsl:apply-templates select="TEI[@n='3']/tei:text/tei:body/tei:div[@xml:id='retro221']/tei:div[@type='letter-body']/tei:ab"/></td>
                                    
                             </tr>
                             <tr>
                                 
                                 <td><xsl:apply-templates select="TEI[@n='3']/tei:text/tei:body/tei:div[@xml:id='retro221']/tei:div[@type='closer']"/></td>
                                 
                             </tr>
                         </table>
                      
                     </div>
                     <div id="indirizzo">
                         <h3 class="h3Tab">Indirizzo della cartolina</h3>
                         <table>
                             
                             <tr><td><xsl:apply-templates select="TEI[@n='3']/tei:text/tei:body/tei:div[@xml:id='retro221']/tei:div[@type='destination']/tei:p/tei:address"/></td></tr>
                             
                         </table>
                     </div>
                   </div>
                </div>
                <div class="row">
                    <div class="column2">
                        <div id="bottone">
                            <button onclick="document.location='Cartolina221.html#Cartolina221'" class="button">Torna su</button>
                        </div>
                    </div>
                </div>
                                 
                         
                         
                          
                   
                 
               
            </body>
            
            
            
        </html>
        
        
        
        
        
        
        </xsl:if>
        <!--CARTOLINA 194-->
        <xsl:if test="//TEI[@n=2]">
        <html>
            <head>
                <title>
                    
                    <xsl:value-of select="//TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                </title>
                <link rel="stylesheet" type="text/css" href="css/stile.css"/>
                <script src="mostra194.js" charset="utf-8"> </script>
                <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
                <script type="text/javascript" src="jquery.maphilight.min.js"></script>
                <script type="text/javascript">$(function() {
                    $('.Img').maphilight();
                    });
                </script>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link href='https://fonts.googleapis.com/css?family=Alice' rel='stylesheet'/>
                
            </head>
            <body>
                
                <div class="header">
                    <h1>Progetto Cartoline per Codifica dei testi</h1>
                    <xsl:for-each select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:titleStmt">
                        <xsl:for-each select="tei:respStmt[position()=1] ">
                            <h2><xsl:value-of select="tei:resp"/>&#160;
                            <xsl:for-each select="tei:name">
                                <xsl:if test="position()>1">
                                    &#160;e&#160;
                                </xsl:if>
                                <xsl:value-of select="."/>
                            </xsl:for-each></h2>
                        </xsl:for-each>
                    </xsl:for-each>  
                </div>
                
                <div class="topnav">
                    <a href="Cartolina172.html#Cartolina172" id="Cartolina172">Cartolina 172</a>
                    <a href="Cartolina194.html#Cartolina194" id="Cartolina194">Cartolina 194</a>
                    <a href="Cartolina221.html#Cartolina221" id="Cartolina221">Cartolina 221</a>
                </div>
                
                <div class="row">
                    <div id="ImmagineTestoF" class="column">
                        <h3>Fronte</h3>
                        <div id="immagine_f">
                          
                             
                            <xsl:element name="img">
                                
                                <xsl:attribute name="src"><xsl:value-of select="TEI[@n='2']/tei:facsimile/tei:surface[@n='f']/tei:graphic/@url"/></xsl:attribute>
                                <xsl:attribute name="id"><xsl:value-of select="TEI[@n='2']/tei:facsimile/tei:surface[@n='f']/tei:graphic/@xml:id"/></xsl:attribute>
                                <xsl:attribute name="class">Img</xsl:attribute>
                                
                               
                             </xsl:element>    
                                    
                                    
                               
                                
                       </div>
                       
                   
                    
                    </div>
                    <div id="ImmagineTestoR" class="column">
                        <h3>Retro</h3>
                        <div id="immagine_r">
                            
                            
                            <xsl:element name="img">
                                
                                <xsl:attribute name="src"><xsl:value-of select="TEI[@n='2']/tei:facsimile/tei:surface[@n='r']/tei:graphic/@url"/></xsl:attribute>
                                <xsl:attribute name="id"><xsl:value-of select="TEI[@n='2']/tei:facsimile/tei:surface[@n='r']/tei:graphic/@xml:id"/></xsl:attribute>
                                <xsl:attribute name="class">Img</xsl:attribute>
                                <xsl:attribute name="usemap">#map2_r</xsl:attribute>
                                
                            </xsl:element>    
                            
                            
                            <xsl:element name="map">
                                <xsl:attribute name="name">map2_r</xsl:attribute>
                                <xsl:attribute name="class">map2_r</xsl:attribute>
                                
                                <xsl:apply-templates select="//TEI[@n='2']/tei:facsimile/tei:surface[@n='r']/tei:zone"/>
                                
                            </xsl:element>        
                            
                        </div>
                      
                        <div id="blocco1">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='2']/tei:text/tei:body/tei:div[@xml:id='retro194']/tei:div[@type='opener']/tei:ab"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco2">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='2']/tei:text/tei:body/tei:div[@xml:id='retro194']/tei:div[@type='opener']/tei:salute"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco3">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr><td> <xsl:apply-templates select="TEI[@n='2']/tei:text/tei:body/tei:div[@xml:id='retro194']/tei:div[@type='letter-body']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco4">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='2']/tei:text/tei:body/tei:div[@xml:id='retro194']/tei:div[@type='closer']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco5">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='2']/tei:text/tei:front/tei:div[@type='stampe']/tei:ab[@xml:id='scritta_r1']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco6">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr><td> <xsl:apply-templates select="TEI[@n='2']/tei:text/tei:front/tei:div[@type='stampe']/tei:ab[@xml:id='scritta_r2']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco7">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='2']/tei:text/tei:front/tei:div[@type='stampe']/tei:ab[@xml:id='scritta_r3']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco8">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='2']/tei:text/tei:front/tei:div[@type='stampe']/tei:ab[@xml:id='scritta_r4']"/></td></tr>
                            </table>
                            
                            
                        </div>
                      
                    </div>
                </div>
                
                        
                        
                       
                       
                        
                        
                <div class="row">    
                
               
               
                   <div id="InfoCartolina" class="column2">
                       <div id="edizione">
                           <h3 class="h3Tab">Edizione</h3>
                           <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:edition"/> <br/>
                           <table>
                               <xsl:for-each select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:editionStmt">
                                   
                                   <xsl:for-each select="tei:respStmt">
                                       <tr>
                                           <td><xsl:value-of select="tei:resp"/>:
                                           <xsl:for-each select="tei:name">
                                               <xsl:if test="position()>1">
                                                   &#160;e&#160;
                                               </xsl:if>
                                                   <xsl:value-of select="."/>
                                               
                                               
                                           </xsl:for-each>
                                           </td>
                                       </tr>  
                                   </xsl:for-each>
                               </xsl:for-each>
                               
                               <tr>
                                   <td>Editore: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:publisher"/></td>
                               </tr>
                               <tr>
                                   <td>Luogo di pubblicazione: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:pubPlace"/></td>
                               </tr>
                               <tr>
                                   <td>Disponibilità: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:availability"/></td>
                                   
                               </tr>
                               <tr>
                                   <td>Data: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:date"/></td>
                                   
                               </tr>
                               <tr>
                                   <td>Distributore: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:distributor"/></td>
                                   
                               </tr>
                               <tr>
                                   <td>
                                       <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:address/tei:addrLine[1]"/>
                                   </td>
                                   
                               </tr>
                               
                           </table>
                       </div>
                     <div id="riferimenti">
                         <h3 class="h3Tab">Riferimenti immagine cartolina</h3>
                         <table>
                             <tr>
                                 <td>Titolo: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:title"/></td>
                             </tr>
                             <tr>
                                 <td>Autore: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:author"/></td>
                             </tr>
                             <tr>
                                 <td>Produttore della cartolina: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:publisher"/></td>
                             </tr>
                             <tr>
                                 <td>Luogo di pubblicazione: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:pubPlace"/></td>
                             </tr>
                             <tr>
                                 <td>Data di pubblicazione: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:date"/></td>
                             </tr>
                             <tr>
                                 <td>Descrizione dell'immagine: <xsl:value-of select="TEI[@n='2']/tei:text/tei:body/tei:div[@xml:id='fronte194']/tei:figure/tei:figDesc"/></td>
                             </tr>
                         </table>
                         
                     </div>
                     <div id="Luogoconservazione">
                         <h3 class="h3Tab">Luogo di conservazione</h3>
                         <table>
                             <tr>
                                 <td>Nazione: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:country"/></td>
                             </tr>
                             <tr>
                                 <td>Città: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:settlement"/></td>
                             </tr>
                             <tr>
                                 <td>Luogo: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:repository"/></td>
                             </tr>
                             <tr>
                                 <td>Codice Identificativo: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:idno"/></td>
                             </tr>
                         </table>
                     </div>
                     <div id="descrizioneCartolina">
                         <h3 class="h3Tab">Descrizione della cartolina</h3>
                         <table>
                             <tr>
                                 <td>Tipologia: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:summary"/></td>
                             </tr>
                             <tr>
                                 <td>Lingua: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:textLang"/></td>
                             </tr>
                             <tr>
                                 <td>Sintesi: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem[@n='r']/tei:title"/></td>
                             </tr>
                             <tr>
                                 <td>Stato: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition"/></td>
                             </tr>
                          
                             <tr>
                                 <td>Materiale: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:material"/></td>
                             </tr>
                             <tr>
                                 <td>Altezza: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:dimensions/tei:height"/></td>
                             </tr>
                             <tr>
                                 <td>Larghezza: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:dimensions/tei:width"/></td>
                             </tr>
                             <tr>
                                 <td>Particolarità: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:stamp"/></td>
                             </tr>
                         </table>
                     </div>
                     
                     <div id="persone">
                         <h3 class="h3Tab">Persone</h3>
                         <table>
                             <tr>
                                 <th>Mittente:</th>
                                 <th>Destinatario:</th>
                             </tr>
                             
                                
                             <tr>   
                                 <td> <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='GIO']/tei:persName/tei:forename"/></td>
                             
                                 <td> <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='OT']/tei:persName/tei:forename"/></td>
                             </tr>
                             <tr>
                                 <td>Sesso: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='GIO']/tei:sex"/></td>
                                 <td>Sesso: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='OT']/tei:sex"/></td>
                             </tr>
                             <tr>
                                 <td>Note: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='GIO']/tei:note"/></td>
                                 <td>Note: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='OT']/tei:note"/></td>
                             </tr>
                         </table>
                     </div>
                     
                     <div id="PartenzaArrivo">
                         <h3 class="h3Tab">Partenza e arrivo</h3>
                         <table>
                             <tr>
                                 <td>Luogo di origine: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='MO']/tei:placeName"/> (<xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='MO']/tei:district[@type='provincia']"/>),
                                     <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='MO']/tei:region"/>,
                                     <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='MO']/tei:country"/>
                                 </td>
                             </tr>
                             <tr>
                                 <td>Luogo di spedizione: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:profileDesc/tei:correspDesc/tei:correspAction[@type='received']/tei:placeName"/>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     Scritta il: <xsl:value-of select="TEI[@n='2']/tei:teiHeader/tei:profileDesc/tei:correspDesc/tei:correspAction[@type='sent']/tei:date"/>
                                 </td>
                             </tr>
                         </table>
                     </div>
                     <div id="transcrizione">
                         <h3 class="h3Tab">Messaggio della cartolina</h3>
                         <table>
                             <tr>
                                 <td><xsl:value-of select="TEI[@n='2']/tei:text/tei:body/tei:div[@xml:id='retro194']/tei:div[@type='opener']/tei:ab"/></td>
                             </tr>
                             <tr>
                                 
                                 <td><xsl:apply-templates select="TEI[@n='2']/tei:text/tei:body/tei:div[@xml:id='retro194']/tei:div[@type='letter-body']/tei:ab"/></td>
                                    
                             </tr>
                             <tr>
                                 
                                 <td><xsl:apply-templates select="TEI[@n='2']/tei:text/tei:body/tei:div[@xml:id='retro194']/tei:div[@type='closer']"/></td>
                                 
                             </tr>
                         </table>
                      
                     </div>
                  
                   </div>
                </div>
                <div class="row">
                    <div class="column2">
                        <div id="bottone">
                            <button onclick="document.location='Cartolina194.html#Cartolina194'" class="button">Torna su</button>
                        </div>
                    </div>
                </div>
                                 
                         
                         
                          
                   
                 
               
            </body>
            
            
            
        </html>
        
        
        
        
        
        
        </xsl:if>
        <!--CARTOLINA 172-->
        <xsl:if test="//TEI[@n=1]">
        <html>
            <head>
                <title>
                    
                    <xsl:value-of select="//TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                </title>
                <link rel="stylesheet" type="text/css" href="css/stile.css"/>
                <script src="mostra172.js" charset="utf-8"> </script>
                <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
                <script type="text/javascript" src="jquery.maphilight.min.js"></script>
                <script type="text/javascript">$(function() {
                    $('.Img').maphilight();
                    });
                </script>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link href='https://fonts.googleapis.com/css?family=Alice' rel='stylesheet'/>
               
            </head>
            <body>
                
                <div class="header">
                    <h1>Progetto Cartoline per Codifica dei testi</h1>
                    <xsl:for-each select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:titleStmt">
                        <xsl:for-each select="tei:respStmt[position()=1] ">
                            <h2><xsl:value-of select="tei:resp"/>&#160;
                                <xsl:for-each select="tei:name">
                                    <xsl:if test="position()>1">
                                        &#160;e&#160;
                                    </xsl:if>
                                    <xsl:value-of select="."/>
                                </xsl:for-each></h2>
                        </xsl:for-each>
                    </xsl:for-each>  
                </div>
                
                <div class="topnav">
                    <a href="Cartolina172.html#Cartolina172" id="Cartolina172">Cartolina 172</a>
                    <a href="Cartolina194.html#Cartolina194" id="Cartolina194">Cartolina 194</a>
                    <a href="Cartolina221.html#Cartolina221" id="Cartolina221">Cartolina 221</a>
                </div>
                
                <div class="row">
                    <div id="ImmagineTestoF" class="column">
                        <h3>Fronte</h3>
                        <div id="immagine_f">
                          
                             
                            <xsl:element name="img">
                                
                                <xsl:attribute name="src"><xsl:value-of select="TEI[@n='1']/tei:facsimile/tei:surface[@n='f']/tei:graphic/@url"/></xsl:attribute>
                                <xsl:attribute name="id"><xsl:value-of select="TEI[@n='1']/tei:facsimile/tei:surface[@n='f']/tei:graphic/@xml:id"/></xsl:attribute>
                                <xsl:attribute name="class">Img</xsl:attribute>
                                <xsl:attribute name="usemap">#map1_f</xsl:attribute>
                               
                             </xsl:element>    
                                    
                                    
                            <xsl:element name="map">
                                <xsl:attribute name="name">map1_f</xsl:attribute>
                                <xsl:attribute name="class">map1_f</xsl:attribute>
                             
                                <xsl:apply-templates select="//TEI[@n='1']/tei:facsimile/tei:surface[@n='f']/tei:zone"/>
                             
                            </xsl:element>        
                                
                       </div>
                       <div id="blocco1">
                           <h3 class="h3Tab">Messaggio</h3>
                           <table>
                               <tr> <td><xsl:value-of select="TEI[@n='1']/tei:text/tei:body/tei:div[@xml:id='fronte172']/tei:ab[@n='1']"/></td></tr>
                            </table>
                                  
                            
                       </div> 
                        <div id="blocco2">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='1']/tei:text/tei:body/tei:div[@xml:id='fronte172']/tei:ab[@n='2']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco3">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='1']/tei:text/tei:body/tei:div[@xml:id='fronte172']/tei:ab[@n='3']"/></td></tr>
                            </table>
                            
                            
                        </div>
                   
                   
                    
                    </div>
                    <div id="ImmagineTestoR" class="column">
                        <h3>Retro</h3>
                        <div id="immagine_r">
                            
                            
                            <xsl:element name="img">
                                
                                <xsl:attribute name="src"><xsl:value-of select="TEI[@n='1']/tei:facsimile/tei:surface[@n='r']/tei:graphic/@url"/></xsl:attribute>
                                <xsl:attribute name="id"><xsl:value-of select="TEI[@n='1']/tei:facsimile/tei:surface[@n='r']/tei:graphic/@xml:id"/></xsl:attribute>
                                <xsl:attribute name="class">Img</xsl:attribute>
                                <xsl:attribute name="usemap">#map1_r</xsl:attribute>
                                
                            </xsl:element>    
                            
                            
                            <xsl:element name="map">
                                <xsl:attribute name="name">map1_r</xsl:attribute>
                                <xsl:attribute name="class">map1_r</xsl:attribute>
                                
                                <xsl:apply-templates select="//TEI[@n='1']/tei:facsimile/tei:surface[@n='r']/tei:zone"/>
                                
                            </xsl:element>        
                            
                        </div>
                        <div id="blocco4">
                            <h3 class="h3Tab"><a id="TabRetro1"></a>Messaggio</h3>
                            <table>
                                <tr><td> <xsl:apply-templates select="TEI[@n='1']/tei:text/tei:front/tei:div[@type='postmark']/tei:p/tei:stamp[@type='postage']"/></td></tr>
                            </table>
                            
                            
                        </div> 
                        <div id="blocco5">
                            <h3 class="h3Tab"><a id="TabRetro2"></a>Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='1']/tei:text/tei:front/tei:div[@type='postmark']/tei:p/tei:stamp[@type='postmark']/tei:mentioned[@xml:id='timbro']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco6">
                            <h3 class="h3Tab"><a id="TabRetro3"></a>Messaggio</h3>
                            <table>
                                <tr><td> <xsl:apply-templates select="TEI[@n='1']/tei:text/tei:front/tei:div[@type='postmark']/tei:p/tei:stamp[@type='postmark']/tei:mentioned[@xml:id='timbro2']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco7">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr><td> <xsl:apply-templates select="TEI[@n='1']/tei:text/tei:body/tei:div[@xml:id='retro172']/tei:div[@type='opener']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco8">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr><td> <xsl:apply-templates select="TEI[@n='1']/tei:text/tei:body/tei:div[@xml:id='retro172']/tei:div[@type='letter-body']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco9">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr><td> <xsl:apply-templates select="TEI[@n='1']/tei:text/tei:body/tei:div[@xml:id='retro172']/tei:div[@type='closer']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco10">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='1']/tei:text/tei:front/tei:div[@type='stampe']/tei:ab[@xml:id='scritta_r1']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco11">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr><td> <xsl:apply-templates select="TEI[@n='1']/tei:text/tei:front/tei:div[@type='stampe']/tei:ab[@xml:id='scritta_r2']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco12">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='1']/tei:text/tei:front/tei:div[@type='stampe']/tei:ab[@xml:id='scritta_r3']"/></td></tr>
                            </table>
                            
                            
                        </div>
                        <div id="blocco13">
                            <h3 class="h3Tab">Messaggio</h3>
                            <table>
                                <tr> <td><xsl:apply-templates select="TEI[@n='1']/tei:text/tei:body/tei:div[@xml:id='retro172']/tei:div[@type='destination']/tei:p/tei:address"/></td></tr>
                            </table>
                            
                            
                        </div>
                    </div>
                </div>
                
                        
                        
                       
                       
                        
                        
                <div class="row">    
                
               
               
                   <div id="InfoCartolina" class="column2">
                       <div id="edizione">
                           <h3 class="h3Tab">Edizione</h3>
                           <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:edition"/> <br/>
                           <table>
                               <xsl:for-each select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:editionStmt">
                                   
                                   <xsl:for-each select="tei:respStmt">
                                       <tr>
                                           <td><xsl:value-of select="tei:resp"/>:
                                           <xsl:for-each select="tei:name">
                                               <xsl:if test="position()>1">
                                                   &#160;e&#160;
                                               </xsl:if>
                                                   <xsl:value-of select="."/>
                                               
                                               
                                           </xsl:for-each>
                                           </td>
                                       </tr>  
                                   </xsl:for-each>
                               </xsl:for-each>
                               
                               <tr>
                                   <td>Editore: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:publisher"/></td>
                               </tr>
                               <tr>
                                   <td>Luogo di pubblicazione: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:pubPlace"/></td>
                               </tr>
                               <tr>
                                   <td>Disponibilità: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:availability"/></td>
                                   
                               </tr>
                               <tr>
                                   <td>Data: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:date"/></td>
                                   
                               </tr>
                               <tr>
                                   <td>Distributore: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:distributor"/></td>
                                   
                               </tr>
                               <tr>
                                   <td>
                                       <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:address/tei:addrLine[1]"/>
                                   </td>
                                   
                               </tr>
                               
                           </table>
                       </div>
                     <div id="riferimenti">
                         <h3 class="h3Tab">Riferimenti immagine cartolina</h3>
                         <table>
                             <tr>
                                 <td>Titolo: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:title"/></td>
                             </tr>
                             <tr>
                                 <td>Autore: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:author"/></td>
                             </tr>
                             <tr>
                                 <td>Produttore della cartolina: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:publisher"/></td>
                             </tr>
                             <tr>
                                 <td>Luogo di pubblicazione: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:pubPlace"/></td>
                             </tr>
                             <tr>
                                 <td>Data di pubblicazione: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:date"/></td>
                             </tr>
                             <tr>
                                 <td>Descrizione dell'immagine: <xsl:value-of select="TEI[@n='1']/tei:text/tei:body/tei:div[@xml:id='fronte172']/tei:figure/tei:figDesc"/></td>
                             </tr>
                         </table>
                         
                     </div>
                     <div id="Luogoconservazione">
                         <h3 class="h3Tab">Luogo di conservazione</h3>
                         <table>
                             <tr>
                                 <td>Nazione: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:country"/></td>
                             </tr>
                             <tr>
                                 <td>Città: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:settlement"/></td>
                             </tr>
                             <tr>
                                 <td>Luogo: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:repository"/></td>
                             </tr>
                             <tr>
                                 <td>Codice Identificativo: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:idno"/></td>
                             </tr>
                         </table>
                     </div>
                     <div id="descrizioneCartolina">
                         <h3 class="h3Tab">Descrizione della cartolina</h3>
                         <table>
                             <tr>
                                 <td>Tipologia: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:summary"/></td>
                             </tr>
                             <tr>
                                 <td>Lingua: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:textLang"/></td>
                             </tr>
                             <tr>
                                 <td>Sintesi: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem[@n='r']/tei:title"/></td>
                             </tr>
                             <tr>
                                 <td>Stato: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition"/></td>
                             </tr>
                          
                             <tr>
                                 <td>Materiale: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:material"/></td>
                             </tr>
                             <tr>
                                 <td>Altezza: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:dimensions/tei:height"/></td>
                             </tr>
                             <tr>
                                 <td>Larghezza: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:dimensions/tei:width"/></td>
                             </tr>
                             <tr>
                                 <td>Particolarità: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:stamp"/></td>
                             </tr>
                         </table>
                     </div>
                     
                     <div id="persone">
                         <h3 class="h3Tab">Persone</h3>
                         <table>
                             <tr>
                                 <th>Mittente:</th>
                                 <th>Destinatario:</th>
                             </tr>
                             
                                
                             <tr>   
                                 <td> <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='GIO']/tei:persName/tei:forename"/></td>
                             
                                 <td> <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='OT']/tei:persName/tei:forename"/></td>
                             </tr>
                             <tr>
                                 <td>Sesso: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='GIO']/tei:sex"/></td>
                                 <td>Sesso: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='OT']/tei:sex"/></td>
                             </tr>
                             <tr>
                                 <td>Note: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='GIO']/tei:note"/></td>
                                 <td>Note: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id='OT']/tei:note"/></td>
                             </tr>
                         </table>
                     </div>
                     
                     <div id="PartenzaArrivo">
                         <h3 class="h3Tab">Partenza e arrivo</h3>
                         <table>
                             <tr>
                                 <td>Luogo di origine: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='MO']/tei:placeName"/> (<xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='MO']/tei:district[@type='provincia']"/>),
                                     <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='MO']/tei:region"/>,
                                     <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='MO']/tei:country"/>
                                 </td>
                             </tr>
                             <tr>
                                 <td>Luogo di destinazione: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='RV']/tei:placeName"/> (<xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='RV']/tei:district[@type='provincia']"/>),
                                     <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='RV']/tei:region"/>,
                                     <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id='RV']/tei:country"/>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     Spedita il: <xsl:value-of select="TEI[@n='1']/tei:teiHeader/tei:profileDesc/tei:correspDesc/tei:correspAction[@type='sent']/tei:date"/>
                                 </td>
                             </tr>
                         </table>
                     </div>
                     <div id="transcrizione">
                         <h3 class="h3Tab">Messaggio della cartolina</h3>
                         <table>
                             <tr>
                                 <td><xsl:value-of select="TEI[@n='1']/tei:text/tei:body/tei:div[@xml:id='retro172']/tei:div[@type='opener']/tei:ab"/></td>
                             </tr>
                             <tr>
                                 
                                 <td><xsl:apply-templates select="TEI[@n='1']/tei:text/tei:body/tei:div[@xml:id='retro172']/tei:div[@type='letter-body']/tei:ab"/></td>
                                    
                             </tr>
                             <tr>
                                 
                                 <td><xsl:apply-templates select="TEI[@n='1']/tei:text/tei:body/tei:div[@xml:id='retro172']/tei:div[@type='closer']"/></td>
                                 
                             </tr>
                         </table>
                      
                     </div>
                     <div id="indirizzo">
                         <h3 class="h3Tab">Indirizzo della cartolina</h3>
                         <table>
                             
                             <tr><td><xsl:apply-templates select="TEI[@n='1']/tei:text/tei:body/tei:div[@xml:id='retro172']/tei:div[@type='destination']/tei:p/tei:address"/></td></tr>
                             
                         </table>
                     </div>
                   </div>
                </div> 
                <div class="row">
                    <div class="column2">
                        <div id="bottone">
                           
                            <button onclick="document.location='Cartolina172.html#Cartolina172'" class="button">Torna su</button>
                        </div>
                    </div>
                </div>
                                 
                         
                         
                          
                   
                 
               
            </body>
            
            
            
        </html>
        
        
        
        
        
        
        </xsl:if>
    </xsl:template>
    
    <!--TEMPLATE PER ANDARE A CAPO-->
    <xsl:template match="//tei:lb">
        <br/>
    </xsl:template>
    <!-- TEMPLATE PER SPAZIO BIANCO COLONNE-->
    <xsl:template match="//tei:cb">
        &#160;&#160;
    </xsl:template>
 
    <!--TEMPLATE PER INDIRIZZO DESTINAZIONE-->
    <xsl:template match="//tei:addrLine">
       <xsl:value-of select="."/>
        <br/>
    </xsl:template>  
    
        
    
    <!--TEMPLATE PER FORMATTAZIONE TIMBRO-->
    <xsl:template match="tei:mentioned[@xml:id='timbro']" >
        <xsl:value-of select="tei:placeName"/>
        <br/>
        <xsl:value-of select="tei:date"/><xsl:value-of select="s[@xml:id='infoData']"/>
        <br/>
        <xsl:value-of select="s[@xml:id='S']"/>
        <br/>
    </xsl:template>
    
    <!--TEMPLATE PER FORMATTAZIONE FRANCOBOLLO-->
    <xsl:template match="tei:mentioned[@xml:id='francobollo']">
        <xsl:value-of select="tei:orgName"/>
        <br/>
        <xsl:value-of select="tei:s"/>
        <br/>
        
        
    </xsl:template>   
        
        
    
    
    <!--TEMPLATE PER ZONA CARTOLINA-->
    <xsl:template match="//tei:zone">
        
            
        <xsl:element name="area">
            <xsl:attribute name="shape">poly</xsl:attribute>
            <xsl:attribute name="coords"><xsl:value-of select="@points"/></xsl:attribute>
            <xsl:attribute name="onclick">mostra(<xsl:value-of select="@n"/>)</xsl:attribute>
         </xsl:element>    
            
      
       
    
     </xsl:template>       
            
        
       
        
        
    
 
</xsl:stylesheet>