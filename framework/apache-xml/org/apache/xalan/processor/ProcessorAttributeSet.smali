.class Lorg/apache/xalan/processor/ProcessorAttributeSet;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorAttributeSet.java"


# static fields
.field static final serialVersionUID:J = -0x59d7578cbb3d8960L


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 35
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
    .line 103
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 104
    return-void
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 10
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
    .line 65
    new-instance v0, Lorg/apache/xalan/templates/ElemAttributeSet;

    invoke-direct {v0}, Lorg/apache/xalan/templates/ElemAttributeSet;-><init>()V

    .line 67
    .local v0, eat:Lorg/apache/xalan/templates/ElemAttributeSet;
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/xalan/templates/ElemAttributeSet;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 70
    :try_start_c
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/xalan/templates/ElemAttributeSet;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V
    :try_end_13
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_13} :catch_2f

    .line 77
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/xalan/templates/ElemAttributeSet;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    .line 78
    invoke-virtual {p0, p1, p4, p5, v0}, Lorg/apache/xalan/processor/ProcessorAttributeSet;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 79
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/xalan/templates/Stylesheet;->setAttributeSet(Lorg/apache/xalan/templates/ElemAttributeSet;)V

    .line 82
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    .line 84
    .local v1, parent:Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 85
    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 86
    return-void

    .line 72
    .end local v1           #parent:Lorg/apache/xalan/templates/ElemTemplateElement;
    :catch_2f
    move-exception v3

    move-object v2, v3

    .line 74
    .local v2, te:Ljavax/xml/transform/TransformerException;
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method
