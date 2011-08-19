.class public final Lorg/dom4j/DocumentHelper;
.super Ljava/lang/Object;
.source "DocumentHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 1
    .parameter "owner"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 63
    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public static createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 1
    .parameter "owner"
    .parameter "qname"
    .parameter "value"

    .prologue
    .line 58
    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public static createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;
    .locals 1
    .parameter "text"

    .prologue
    .line 67
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;

    move-result-object v0

    return-object v0
.end method

.method public static createComment(Ljava/lang/String;)Lorg/dom4j/Comment;
    .locals 1
    .parameter "text"

    .prologue
    .line 71
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createComment(Ljava/lang/String;)Lorg/dom4j/Comment;

    move-result-object v0

    return-object v0
.end method

.method public static createDocument()Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public static createDocument(Lorg/dom4j/Element;)Lorg/dom4j/Document;
    .locals 1
    .parameter "rootElement"

    .prologue
    .line 45
    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createDocument(Lorg/dom4j/Element;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public static createElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1
    .parameter "name"

    .prologue
    .line 53
    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public static createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 1
    .parameter "qname"

    .prologue
    .line 49
    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public static createEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Entity;
    .locals 1
    .parameter "name"
    .parameter "text"

    .prologue
    .line 79
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/DocumentFactory;->createEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Entity;

    move-result-object v0

    return-object v0
.end method

.method public static createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 1
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 83
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/DocumentFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public static createPattern(Ljava/lang/String;)Lorg/dom4j/rule/Pattern;
    .locals 1
    .parameter "xpathPattern"

    .prologue
    .line 176
    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createPattern(Ljava/lang/String;)Lorg/dom4j/rule/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public static createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;
    .locals 1
    .parameter "pi"
    .parameter "d"

    .prologue
    .line 88
    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public static createProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/ProcessingInstruction;
    .locals 1
    .parameter "pi"
    .parameter "data"

    .prologue
    .line 93
    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public static createQName(Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1
    .parameter "localName"

    .prologue
    .line 101
    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public static createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;
    .locals 1
    .parameter "localName"
    .parameter "namespace"

    .prologue
    .line 97
    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public static createText(Ljava/lang/String;)Lorg/dom4j/Text;
    .locals 1
    .parameter "text"

    .prologue
    .line 75
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v0

    return-object v0
.end method

.method public static createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;
    .locals 1
    .parameter "xpathExpression"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/InvalidXPathException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    return-object v0
.end method

.method public static createXPath(Ljava/lang/String;Lorg/jaxen/VariableContext;)Lorg/dom4j/XPath;
    .locals 1
    .parameter "xpathExpression"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/InvalidXPathException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/DocumentFactory;->createXPath(Ljava/lang/String;Lorg/jaxen/VariableContext;)Lorg/dom4j/XPath;

    move-result-object v0

    return-object v0
.end method

.method public static createXPathFilter(Ljava/lang/String;)Lorg/dom4j/NodeFilter;
    .locals 1
    .parameter "xpathFilterExpression"

    .prologue
    .line 160
    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createXPathFilter(Ljava/lang/String;)Lorg/dom4j/NodeFilter;

    move-result-object v0

    return-object v0
.end method

.method private static getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    return-object v0
.end method

.method private static getEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "text"

    .prologue
    .line 290
    const/4 v1, 0x0

    .line 292
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, xml:Ljava/lang/String;
    const-string v6, "<?xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 295
    const-string v6, "?>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 296
    .local v0, end:I
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, sub:Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, " =\"\'"

    invoke-direct {v4, v2, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .local v4, tokens:Ljava/util/StringTokenizer;
    :cond_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_2

    .line 312
    .end local v0           #end:I
    .end local v2           #sub:Ljava/lang/String;
    .end local v4           #tokens:Ljava/util/StringTokenizer;
    :cond_1
    :goto_0
    return-object v1

    .line 300
    .restart local v0       #end:I
    .restart local v2       #sub:Ljava/lang/String;
    .restart local v4       #tokens:Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, token:Ljava/lang/String;
    const-string v6, "encoding"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 303
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 304
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 307
    goto :goto_0
.end method

.method public static makeElement(Lorg/dom4j/Branch;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 7
    .parameter "source"
    .parameter "path"

    .prologue
    .line 337
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, "/"

    invoke-direct {v5, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .local v5, tokens:Ljava/util/StringTokenizer;
    instance-of v6, p0, Lorg/dom4j/Document;

    if-eqz v6, :cond_1

    .line 341
    move-object v0, p0

    check-cast v0, Lorg/dom4j/Document;

    move-object v1, v0

    .line 342
    .local v1, document:Lorg/dom4j/Document;
    invoke-interface {v1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v4

    .line 346
    .local v4, parent:Lorg/dom4j/Element;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, name:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 349
    invoke-interface {v1, v3}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 355
    .end local v1           #document:Lorg/dom4j/Document;
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 357
    .local v2, element:Lorg/dom4j/Element;
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_2

    .line 373
    return-object v2

    .line 352
    .end local v2           #element:Lorg/dom4j/Element;
    .end local v4           #parent:Lorg/dom4j/Element;
    :cond_1
    move-object v0, p0

    check-cast v0, Lorg/dom4j/Element;

    move-object v4, v0

    .restart local v4       #parent:Lorg/dom4j/Element;
    goto :goto_0

    .line 358
    .restart local v2       #element:Lorg/dom4j/Element;
    :cond_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 360
    .restart local v3       #name:Ljava/lang/String;
    const/16 v6, 0x3a

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_4

    .line 361
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->getQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/dom4j/Element;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v2

    .line 366
    :goto_2
    if-nez v2, :cond_3

    .line 367
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 370
    :cond_3
    move-object v4, v2

    goto :goto_1

    .line 363
    :cond_4
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    goto :goto_2
.end method

.method public static parseText(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 5
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v2, 0x0

    .line 272
    .local v2, result:Lorg/dom4j/Document;
    new-instance v1, Lorg/dom4j/io/SAXReader;

    invoke-direct {v1}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 273
    .local v1, reader:Lorg/dom4j/io/SAXReader;
    invoke-static {p0}, Lorg/dom4j/DocumentHelper;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, encoding:Ljava/lang/String;
    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 276
    .local v3, source:Lorg/xml/sax/InputSource;
    invoke-virtual {v3, v0}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1, v3}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v2

    .line 282
    invoke-interface {v2}, Lorg/dom4j/Document;->getXMLEncoding()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 283
    invoke-interface {v2, v0}, Lorg/dom4j/Document;->setXMLEncoding(Ljava/lang/String;)V

    .line 286
    :cond_0
    return-object v2
.end method

.method public static selectNodes(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .parameter "xpathFilterExpression"
    .parameter "nodes"

    .prologue
    .line 194
    invoke-static {p0}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 196
    .local v0, xpath:Lorg/dom4j/XPath;
    invoke-interface {v0, p1}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static selectNodes(Ljava/lang/String;Lorg/dom4j/Node;)Ljava/util/List;
    .locals 2
    .parameter "xpathFilterExpression"
    .parameter "node"

    .prologue
    .line 214
    invoke-static {p0}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 216
    .local v0, xpath:Lorg/dom4j/XPath;
    invoke-interface {v0, p1}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static sort(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .parameter "list"
    .parameter "xpathExpression"

    .prologue
    .line 231
    invoke-static {p1}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 232
    .local v0, xpath:Lorg/dom4j/XPath;
    invoke-interface {v0, p0}, Lorg/dom4j/XPath;->sort(Ljava/util/List;)V

    .line 233
    return-void
.end method

.method public static sort(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 1
    .parameter "list"
    .parameter "expression"
    .parameter "distinct"

    .prologue
    .line 251
    invoke-static {p1}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 252
    .local v0, xpath:Lorg/dom4j/XPath;
    invoke-interface {v0, p0, p2}, Lorg/dom4j/XPath;->sort(Ljava/util/List;Z)V

    .line 253
    return-void
.end method
