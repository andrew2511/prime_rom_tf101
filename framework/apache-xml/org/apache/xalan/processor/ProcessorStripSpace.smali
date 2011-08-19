.class Lorg/apache/xalan/processor/ProcessorStripSpace;
.super Lorg/apache/xalan/processor/ProcessorPreserveSpace;
.source "ProcessorStripSpace.java"


# static fields
.field static final serialVersionUID:J = -0x4da3a1ec5b269f47L


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorPreserveSpace;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 62
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v2

    .line 63
    .local v2, thisSheet:Lorg/apache/xalan/templates/Stylesheet;
    new-instance v1, Lorg/apache/xalan/processor/WhitespaceInfoPaths;

    invoke-direct {v1, v2}, Lorg/apache/xalan/processor/WhitespaceInfoPaths;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 64
    .local v1, paths:Lorg/apache/xalan/processor/WhitespaceInfoPaths;
    invoke-virtual {p0, p1, p4, p5, v1}, Lorg/apache/xalan/processor/ProcessorStripSpace;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 66
    invoke-virtual {v1}, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->getElements()Ljava/util/Vector;

    move-result-object v4

    .line 68
    .local v4, xpaths:Ljava/util/Vector;
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_11
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v0, v5, :cond_30

    .line 70
    new-instance v3, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/XPath;

    const/4 v5, 0x1

    invoke-direct {v3, p0, v5, v2}, Lorg/apache/xalan/templates/WhiteSpaceInfo;-><init>(Lorg/apache/xpath/XPath;ZLorg/apache/xalan/templates/Stylesheet;)V

    .line 71
    .local v3, wsi:Lorg/apache/xalan/templates/WhiteSpaceInfo;
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->setUid(I)V

    .line 73
    invoke-virtual {v2, v3}, Lorg/apache/xalan/templates/Stylesheet;->setStripSpaces(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 75
    .end local v3           #wsi:Lorg/apache/xalan/templates/WhiteSpaceInfo;
    :cond_30
    invoke-virtual {v1}, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->clearElements()V

    .line 77
    return-void
.end method
