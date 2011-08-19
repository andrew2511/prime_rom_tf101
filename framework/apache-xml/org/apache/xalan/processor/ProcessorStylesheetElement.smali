.class public Lorg/apache/xalan/processor/ProcessorStylesheetElement;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorStylesheetElement.java"


# static fields
.field static final serialVersionUID:J = -0xc2e917946bf5818L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "handler"
    .parameter "uri"
    .parameter "localName"
    .parameter "rawName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/XSLTElementProcessor;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 145
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    .line 146
    return-void
.end method

.method protected getStylesheetRoot(Lorg/apache/xalan/processor/StylesheetHandler;)Lorg/apache/xalan/templates/Stylesheet;
    .registers 5
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getSchema()Lorg/apache/xalan/processor/XSLTSchema;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/xalan/templates/StylesheetRoot;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljavax/xml/transform/ErrorListener;)V

    .line 125
    .local v0, stylesheet:Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->isSecureProcessing()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->setSecureProcessing(Z)V

    .line 128
    :cond_1f
    return-object v0
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 13
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
    .line 64
    invoke-super/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 67
    :try_start_3
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetType()I
    :try_end_6
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_6} :catch_3c

    move-result v3

    .line 70
    .local v3, stylesheetType:I
    const/4 v6, 0x1

    if-ne v3, v6, :cond_44

    .line 74
    :try_start_a
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/ProcessorStylesheetElement;->getStylesheetRoot(Lorg/apache/xalan/processor/StylesheetHandler;)Lorg/apache/xalan/templates/Stylesheet;
    :try_end_d
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_a .. :try_end_d} :catch_35
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a .. :try_end_d} :catch_3c

    move-result-object v2

    .line 101
    .local v2, stylesheet:Lorg/apache/xalan/templates/Stylesheet;
    :goto_e
    :try_start_e
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/xalan/templates/Stylesheet;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    .line 102
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/xalan/templates/Stylesheet;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 104
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/xalan/templates/Stylesheet;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V

    .line 105
    invoke-virtual {p1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->pushStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 106
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v6

    invoke-virtual {p0, p1, p4, p5, v6}, Lorg/apache/xalan/processor/ProcessorStylesheetElement;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 108
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/apache/xalan/processor/StylesheetHandler;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 114
    return-void

    .line 76
    .end local v2           #stylesheet:Lorg/apache/xalan/templates/Stylesheet;
    :catch_35
    move-exception v5

    .line 78
    .local v5, tfe:Ljavax/xml/transform/TransformerConfigurationException;
    new-instance v6, Ljavax/xml/transform/TransformerException;

    invoke-direct {v6, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_3c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_e .. :try_end_3c} :catch_3c

    .line 110
    .end local v3           #stylesheetType:I
    .end local v5           #tfe:Ljavax/xml/transform/TransformerConfigurationException;
    :catch_3c
    move-exception v6

    move-object v4, v6

    .line 112
    .local v4, te:Ljavax/xml/transform/TransformerException;
    new-instance v6, Lorg/xml/sax/SAXException;

    invoke-direct {v6, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 83
    .end local v4           #te:Ljavax/xml/transform/TransformerException;
    .restart local v3       #stylesheetType:I
    :cond_44
    :try_start_44
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v0

    .line 85
    .local v0, parent:Lorg/apache/xalan/templates/Stylesheet;
    const/4 v6, 0x3

    if-ne v3, v6, :cond_55

    .line 87
    new-instance v1, Lorg/apache/xalan/templates/StylesheetComposed;

    invoke-direct {v1, v0}, Lorg/apache/xalan/templates/StylesheetComposed;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 89
    .local v1, sc:Lorg/apache/xalan/templates/StylesheetComposed;
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/Stylesheet;->setImport(Lorg/apache/xalan/templates/StylesheetComposed;)V

    .line 91
    move-object v2, v1

    .line 92
    .restart local v2       #stylesheet:Lorg/apache/xalan/templates/Stylesheet;
    goto :goto_e

    .line 95
    .end local v1           #sc:Lorg/apache/xalan/templates/StylesheetComposed;
    .end local v2           #stylesheet:Lorg/apache/xalan/templates/Stylesheet;
    :cond_55
    new-instance v2, Lorg/apache/xalan/templates/Stylesheet;

    invoke-direct {v2, v0}, Lorg/apache/xalan/templates/Stylesheet;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 97
    .restart local v2       #stylesheet:Lorg/apache/xalan/templates/Stylesheet;
    invoke-virtual {v0, v2}, Lorg/apache/xalan/templates/Stylesheet;->setInclude(Lorg/apache/xalan/templates/Stylesheet;)V
    :try_end_5d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_44 .. :try_end_5d} :catch_3c

    goto :goto_e
.end method
