.class Lorg/apache/xalan/processor/ProcessorOutputElem;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorOutputElem.java"


# static fields
.field static final serialVersionUID:J = 0x30c35205e6f98e86L


# instance fields
.field private m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public addLiteralResultAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "attrUri"
    .parameter "attrLocalName"
    .parameter "attrRawName"
    .parameter "attrValue"

    .prologue
    .line 163
    new-instance v0, Lorg/apache/xml/utils/QName;

    invoke-direct {v0, p1, p2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v0, key:Lorg/apache/xml/utils/QName;
    iget-object v1, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v1, v0, p4}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Lorg/apache/xml/utils/QName;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public setCdataSectionElements(Ljava/util/Vector;)V
    .registers 4
    .parameter "newValue"

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "cdata-section-elements"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setQNameProperties(Ljava/lang/String;Ljava/util/Vector;)V

    .line 55
    return-void
.end method

.method public setDoctypePublic(Ljava/lang/String;)V
    .registers 4
    .parameter "newValue"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "doctype-public"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public setDoctypeSystem(Ljava/lang/String;)V
    .registers 4
    .parameter "newValue"

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "doctype-system"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 4
    .parameter "newValue"

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "encoding"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public setForeignAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "attrUri"
    .parameter "attrLocalName"
    .parameter "attrRawName"
    .parameter "attrValue"

    .prologue
    .line 153
    new-instance v0, Lorg/apache/xml/utils/QName;

    invoke-direct {v0, p1, p2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .local v0, key:Lorg/apache/xml/utils/QName;
    iget-object v1, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v1, v0, p4}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Lorg/apache/xml/utils/QName;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public setIndent(Z)V
    .registers 4
    .parameter "newValue"

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "indent"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setBooleanProperty(Ljava/lang/String;Z)V

    .line 95
    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .registers 4
    .parameter "newValue"

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "media-type"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public setMethod(Lorg/apache/xml/utils/QName;)V
    .registers 4
    .parameter "newValue"

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setQNameProperty(Ljava/lang/String;Lorg/apache/xml/utils/QName;)V

    .line 115
    return-void
.end method

.method public setOmitXmlDeclaration(Z)V
    .registers 4
    .parameter "newValue"

    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "omit-xml-declaration"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setBooleanProperty(Ljava/lang/String;Z)V

    .line 125
    return-void
.end method

.method public setStandalone(Z)V
    .registers 4
    .parameter "newValue"

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "standalone"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setBooleanProperty(Ljava/lang/String;Z)V

    .line 135
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 4
    .parameter "newValue"

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 12
    .parameter "handler"
    .parameter "uri"
    .parameter "localName"
    .parameter "rawName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v4, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {v4}, Lorg/apache/xalan/templates/OutputProperties;-><init>()V

    iput-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    .line 192
    iget-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xalan/templates/OutputProperties;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    .line 193
    iget-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xalan/templates/OutputProperties;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 194
    iget-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/xalan/templates/OutputProperties;->setUid(I)V

    .line 195
    invoke-virtual {p0, p1, p4, p5, p0}, Lorg/apache/xalan/processor/ProcessorOutputElem;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 199
    iget-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v4}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v4

    const-string v5, "{http://xml.apache.org/xalan}entities"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 202
    .local v1, entitiesFileName:Ljava/lang/String;
    if-eqz v1, :cond_48

    .line 206
    :try_start_35
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, absURL:Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v4}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v4

    const-string v5, "{http://xml.apache.org/xalan}entities"

    invoke-virtual {v4, v5, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljavax/xml/transform/TransformerException; {:try_start_35 .. :try_end_48} :catch_5e

    .line 216
    .end local v0           #absURL:Ljava/lang/String;
    :cond_48
    :goto_48
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v4, v5}, Lorg/apache/xalan/templates/Stylesheet;->setOutput(Lorg/apache/xalan/templates/OutputProperties;)V

    .line 218
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    .line 219
    .local v2, parent:Lorg/apache/xalan/templates/ElemTemplateElement;
    iget-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v2, v4}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 221
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/xalan/processor/ProcessorOutputElem;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    .line 222
    return-void

    .line 210
    .end local v2           #parent:Lorg/apache/xalan/templates/ElemTemplateElement;
    :catch_5e
    move-exception v4

    move-object v3, v4

    .line 212
    .local v3, te:Ljavax/xml/transform/TransformerException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_48
.end method
