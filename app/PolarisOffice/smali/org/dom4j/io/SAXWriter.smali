.class public Lorg/dom4j/io/SAXWriter;
.super Ljava/lang/Object;
.source "SAXWriter.java"

# interfaces
.implements Lorg/xml/sax/XMLReader;


# static fields
.field protected static final FEATURE_NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final FEATURE_NAMESPACE_PREFIXES:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field protected static final LEXICAL_HANDLER_NAMES:[Ljava/lang/String;


# instance fields
.field private attributes:Lorg/xml/sax/helpers/AttributesImpl;

.field private contentHandler:Lorg/xml/sax/ContentHandler;

.field private declareNamespaceAttributes:Z

.field private dtdHandler:Lorg/xml/sax/DTDHandler;

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private features:Ljava/util/Map;

.field private lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private properties:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 55
    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 56
    const-string v2, "http://xml.org/sax/handlers/LexicalHandler"

    aput-object v2, v0, v1

    .line 54
    sput-object v0, Lorg/dom4j/io/SAXWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXWriter;->features:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXWriter;->properties:Ljava/util/Map;

    .line 91
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->properties:Ljava/util/Map;

    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->properties:Ljava/util/Map;

    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .parameter "contentHandler"

    .prologue
    .line 96
    invoke-direct {p0}, Lorg/dom4j/io/SAXWriter;-><init>()V

    .line 97
    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0
    .parameter "contentHandler"
    .parameter "lexicalHandler"

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/dom4j/io/SAXWriter;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 104
    iput-object p2, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 105
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .parameter "contentHandler"
    .parameter "lexicalHandler"
    .parameter "entityResolver"

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/dom4j/io/SAXWriter;-><init>()V

    .line 110
    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 111
    iput-object p2, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 112
    iput-object p3, p0, Lorg/dom4j/io/SAXWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 113
    return-void
.end method


# virtual methods
.method protected addNamespaceAttribute(Lorg/xml/sax/helpers/AttributesImpl;Lorg/dom4j/Namespace;)Lorg/xml/sax/helpers/AttributesImpl;
    .locals 8
    .parameter "attrs"
    .parameter "namespace"

    .prologue
    .line 852
    iget-boolean v0, p0, Lorg/dom4j/io/SAXWriter;->declareNamespaceAttributes:Z

    if-eqz v0, :cond_2

    .line 853
    if-nez p1, :cond_0

    .line 854
    new-instance p1, Lorg/xml/sax/helpers/AttributesImpl;

    .end local p1
    invoke-direct {p1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 857
    .restart local p1
    :cond_0
    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    .line 858
    .local v6, prefix:Ljava/lang/String;
    const-string v3, "xmlns"

    .line 860
    .local v3, qualifiedName:Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 861
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v7, "xmlns:"

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 864
    :cond_1
    const-string v1, ""

    .line 865
    .local v1, uri:Ljava/lang/String;
    move-object v2, v6

    .line 866
    .local v2, localName:Ljava/lang/String;
    const-string v4, "CDATA"

    .line 867
    .local v4, type:Ljava/lang/String;
    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    .local v5, value:Ljava/lang/String;
    move-object v0, p1

    .line 869
    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    .end local v1           #uri:Ljava/lang/String;
    .end local v2           #localName:Ljava/lang/String;
    .end local v3           #qualifiedName:Ljava/lang/String;
    .end local v4           #type:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    .end local v6           #prefix:Ljava/lang/String;
    :cond_2
    return-object p1
.end method

.method protected checkForNullHandlers()V
    .locals 0

    .prologue
    .line 907
    return-void
.end method

.method protected createAttributes(Lorg/dom4j/Element;Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;
    .locals 8
    .parameter "element"
    .parameter "namespaceAttributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 822
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 824
    if-eqz p2, :cond_0

    .line 825
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v0, p2}, Lorg/xml/sax/helpers/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    .line 828
    :cond_0
    invoke-interface {p1}, Lorg/dom4j/Element;->attributeIterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 835
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    return-object v0

    .line 829
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/dom4j/Attribute;

    .line 830
    .local v6, attribute:Lorg/dom4j/Attribute;
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-interface {v6}, Lorg/dom4j/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 831
    invoke-interface {v6}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDATA"

    .line 832
    invoke-interface {v6}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 830
    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected documentLocator(Lorg/dom4j/Document;)V
    .locals 5
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 661
    new-instance v1, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v1}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 663
    .local v1, locator:Lorg/xml/sax/helpers/LocatorImpl;
    const/4 v2, 0x0

    .line 664
    .local v2, publicID:Ljava/lang/String;
    const/4 v3, 0x0

    .line 665
    .local v3, systemID:Ljava/lang/String;
    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    .line 667
    .local v0, docType:Lorg/dom4j/DocumentType;
    if-eqz v0, :cond_0

    .line 668
    invoke-interface {v0}, Lorg/dom4j/DocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-interface {v0}, Lorg/dom4j/DocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v3

    .line 672
    :cond_0
    if-eqz v2, :cond_1

    .line 673
    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 676
    :cond_1
    if-eqz v3, :cond_2

    .line 677
    invoke-virtual {v1, v3}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 680
    :cond_2
    invoke-virtual {v1, v4}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 681
    invoke-virtual {v1, v4}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 683
    iget-object v4, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 684
    return-void
.end method

.method protected dtdHandler(Lorg/dom4j/Document;)V
    .locals 0
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 717
    return-void
.end method

.method protected endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 724
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 725
    return-void
.end method

.method protected endElement(Lorg/dom4j/Element;)V
    .locals 4
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 816
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v2

    .line 817
    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    .line 816
    invoke-interface {v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    return-void
.end method

.method protected endPrefixMapping(Lorg/dom4j/tree/NamespaceStack;I)V
    .locals 3
    .parameter "stack"
    .parameter "stackSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 799
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v1

    if-gt v1, p2, :cond_1

    .line 806
    return-void

    .line 800
    :cond_1
    invoke-virtual {p1}, Lorg/dom4j/tree/NamespaceStack;->pop()Lorg/dom4j/Namespace;

    move-result-object v0

    .line 802
    .local v0, namespace:Lorg/dom4j/Namespace;
    if-eqz v0, :cond_0

    .line 803
    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected entityResolver(Lorg/dom4j/Document;)V
    .locals 7
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 687
    iget-object v4, p0, Lorg/dom4j/io/SAXWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v4, :cond_1

    .line 688
    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    .line 690
    .local v0, docType:Lorg/dom4j/DocumentType;
    if-eqz v0, :cond_1

    .line 691
    invoke-interface {v0}, Lorg/dom4j/DocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, publicID:Ljava/lang/String;
    invoke-interface {v0}, Lorg/dom4j/DocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v3

    .line 694
    .local v3, systemID:Ljava/lang/String;
    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    .line 696
    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/dom4j/io/SAXWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    invoke-interface {v4, v2, v3}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    .end local v0           #docType:Lorg/dom4j/DocumentType;
    .end local v2           #publicID:Ljava/lang/String;
    .end local v3           #systemID:Ljava/lang/String;
    :cond_1
    return-void

    .line 697
    .restart local v0       #docType:Lorg/dom4j/DocumentType;
    .restart local v2       #publicID:Ljava/lang/String;
    .restart local v3       #systemID:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 698
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Could not resolve publicID: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " systemID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 698
    invoke-direct {v4, v5, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 496
    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->features:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 498
    .local v0, answer:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 564
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lorg/dom4j/io/SAXWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 570
    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->properties:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    return-object v1

    .line 565
    :cond_0
    sget-object v1, Lorg/dom4j/io/SAXWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    invoke-virtual {p0}, Lorg/dom4j/io/SAXWriter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v1

    goto :goto_1

    .line 564
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isDeclareNamespaceAttributes()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lorg/dom4j/io/SAXWriter;->declareNamespaceAttributes:Z

    return v0
.end method

.method protected isIgnoreableNamespace(Lorg/dom4j/Namespace;Lorg/dom4j/tree/NamespaceStack;)Z
    .locals 3
    .parameter "namespace"
    .parameter "namespaceStack"

    .prologue
    const/4 v2, 0x1

    .line 889
    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {p1, v1}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 890
    sget-object v1, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {p1, v1}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    .line 900
    :goto_0
    return v1

    .line 894
    :cond_1
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, uri:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    move v1, v2

    .line 897
    goto :goto_0

    .line 900
    :cond_3
    invoke-virtual {p2, p1}, Lorg/dom4j/tree/NamespaceStack;->contains(Lorg/dom4j/Namespace;)Z

    move-result v1

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 2
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 583
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "This XMLReader can only accept <dom4j> InputSource objects"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 600
    instance-of v3, p1, Lorg/dom4j/io/DocumentInputSource;

    if-eqz v3, :cond_0

    .line 601
    move-object v0, p1

    check-cast v0, Lorg/dom4j/io/DocumentInputSource;

    move-object v2, v0

    .line 602
    .local v2, documentInput:Lorg/dom4j/io/DocumentInputSource;
    invoke-virtual {v2}, Lorg/dom4j/io/DocumentInputSource;->getDocument()Lorg/dom4j/Document;

    move-result-object v1

    .line 603
    .local v1, document:Lorg/dom4j/Document;
    invoke-virtual {p0, v1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Document;)V

    .line 609
    return-void

    .line 605
    .end local v1           #document:Lorg/dom4j/Document;
    .end local v2           #documentInput:Lorg/dom4j/io/DocumentInputSource;
    :cond_0
    new-instance v3, Lorg/xml/sax/SAXNotSupportedException;

    .line 606
    const-string v4, "This XMLReader can only accept <dom4j> InputSource objects"

    .line 605
    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .parameter "contentHandler"

    .prologue
    .line 387
    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 388
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 406
    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 407
    return-void
.end method

.method public setDeclareNamespaceAttributes(Z)V
    .locals 0
    .parameter "declareNamespaceAttrs"

    .prologue
    .line 363
    iput-boolean p1, p0, Lorg/dom4j/io/SAXWriter;->declareNamespaceAttributes:Z

    .line 364
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .parameter "entityResolver"

    .prologue
    .line 445
    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 446
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .parameter "errorHandler"

    .prologue
    .line 425
    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 426
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 517
    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    invoke-virtual {p0, p2}, Lorg/dom4j/io/SAXWriter;->setDeclareNamespaceAttributes(Z)V

    .line 526
    :cond_0
    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->features:Ljava/util/Map;

    if-eqz p2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    return-void

    .line 519
    :cond_1
    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    if-nez p2, :cond_0

    .line 521
    const-string v0, "Namespace feature is always supported in dom4j"

    .line 522
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Lorg/xml/sax/SAXNotSupportedException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 526
    .end local v0           #msg:Ljava/lang/String;
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0
    .parameter "lexicalHandler"

    .prologue
    .line 465
    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 466
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 538
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lorg/dom4j/io/SAXWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 546
    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->properties:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .end local p2
    :goto_1
    return-void

    .line 539
    .restart local p2
    :cond_0
    sget-object v1, Lorg/dom4j/io/SAXWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    .end local p2
    invoke-virtual {p0, p2}, Lorg/dom4j/io/SAXWriter;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    goto :goto_1

    .line 538
    .restart local p2
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 1
    .parameter "xmlReader"

    .prologue
    .line 475
    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 476
    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 477
    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 478
    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 479
    return-void
.end method

.method protected startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 720
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 721
    return-void
.end method

.method protected startElement(Lorg/dom4j/Element;Lorg/xml/sax/helpers/AttributesImpl;)V
    .locals 5
    .parameter "element"
    .parameter "namespaceAttributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 810
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 811
    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    .line 812
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/io/SAXWriter;->createAttributes(Lorg/dom4j/Element;Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;

    move-result-object v4

    .line 810
    invoke-interface {v0, v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 813
    return-void
.end method

.method protected startPrefixMapping(Lorg/dom4j/Element;Lorg/dom4j/tree/NamespaceStack;)Lorg/xml/sax/helpers/AttributesImpl;
    .locals 9
    .parameter "element"
    .parameter "namespaceStack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 754
    const/4 v4, 0x0

    .line 757
    .local v4, namespaceAttributes:Lorg/xml/sax/helpers/AttributesImpl;
    invoke-interface {p1}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v1

    .line 759
    .local v1, elementNamespace:Lorg/dom4j/Namespace;
    if-eqz v1, :cond_0

    .line 760
    invoke-virtual {p0, v1, p2}, Lorg/dom4j/io/SAXWriter;->isIgnoreableNamespace(Lorg/dom4j/Namespace;Lorg/dom4j/tree/NamespaceStack;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 761
    invoke-virtual {p2, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 762
    iget-object v6, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v7

    .line 763
    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v8

    .line 762
    invoke-interface {v6, v7, v8}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0, v4, v1}, Lorg/dom4j/io/SAXWriter;->addNamespaceAttribute(Lorg/xml/sax/helpers/AttributesImpl;Lorg/dom4j/Namespace;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v4

    .line 768
    :cond_0
    invoke-interface {p1}, Lorg/dom4j/Element;->declaredNamespaces()Ljava/util/List;

    move-result-object v0

    .line 770
    .local v0, declaredNamespaces:Ljava/util/List;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, size:I
    :goto_0
    if-lt v2, v5, :cond_1

    .line 782
    return-object v4

    .line 771
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/dom4j/Namespace;

    .line 773
    .local v3, namespace:Lorg/dom4j/Namespace;
    invoke-virtual {p0, v3, p2}, Lorg/dom4j/io/SAXWriter;->isIgnoreableNamespace(Lorg/dom4j/Namespace;Lorg/dom4j/tree/NamespaceStack;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 774
    invoke-virtual {p2, v3}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 775
    iget-object v6, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v7

    .line 776
    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v8

    .line 775
    invoke-interface {v6, v7, v8}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-virtual {p0, v4, v3}, Lorg/dom4j/io/SAXWriter;->addNamespaceAttribute(Lorg/xml/sax/helpers/AttributesImpl;Lorg/dom4j/Namespace;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v4

    .line 770
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 261
    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 263
    .local v0, chars:[C
    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 265
    .end local v0           #chars:[C
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/CDATA;)V
    .locals 2
    .parameter "cdata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-interface {p1}, Lorg/dom4j/CDATA;->getText()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 281
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public write(Lorg/dom4j/Comment;)V
    .locals 5
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v2, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v2, :cond_0

    .line 299
    invoke-interface {p1}, Lorg/dom4j/Comment;->getText()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 301
    .local v0, chars:[C
    iget-object v2, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-interface {v2, v0, v3, v4}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 303
    .end local v0           #chars:[C
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Document;)V
    .locals 1
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p0}, Lorg/dom4j/io/SAXWriter;->checkForNullHandlers()V

    .line 197
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->documentLocator(Lorg/dom4j/Document;)V

    .line 198
    invoke-virtual {p0}, Lorg/dom4j/io/SAXWriter;->startDocument()V

    .line 199
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->entityResolver(Lorg/dom4j/Document;)V

    .line 200
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->dtdHandler(Lorg/dom4j/Document;)V

    .line 202
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/SAXWriter;->writeContent(Lorg/dom4j/Branch;Lorg/dom4j/tree/NamespaceStack;)V

    .line 203
    invoke-virtual {p0}, Lorg/dom4j/io/SAXWriter;->endDocument()V

    .line 205
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Element;)V
    .locals 1
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Element;Lorg/dom4j/tree/NamespaceStack;)V

    .line 218
    return-void
.end method

.method protected write(Lorg/dom4j/Element;Lorg/dom4j/tree/NamespaceStack;)V
    .locals 2
    .parameter "element"
    .parameter "namespaceStack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 729
    invoke-virtual {p2}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v1

    .line 730
    .local v1, stackSize:I
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/io/SAXWriter;->startPrefixMapping(Lorg/dom4j/Element;Lorg/dom4j/tree/NamespaceStack;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v0

    .line 732
    .local v0, namespaceAttributes:Lorg/xml/sax/helpers/AttributesImpl;
    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/SAXWriter;->startElement(Lorg/dom4j/Element;Lorg/xml/sax/helpers/AttributesImpl;)V

    .line 733
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/io/SAXWriter;->writeContent(Lorg/dom4j/Branch;Lorg/dom4j/tree/NamespaceStack;)V

    .line 734
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->endElement(Lorg/dom4j/Element;)V

    .line 735
    invoke-virtual {p0, p2, v1}, Lorg/dom4j/io/SAXWriter;->endPrefixMapping(Lorg/dom4j/tree/NamespaceStack;I)V

    .line 736
    return-void
.end method

.method public write(Lorg/dom4j/Entity;)V
    .locals 3
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-interface {p1}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v2, :cond_0

    .line 318
    invoke-interface {p1}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v2, v0}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0, v1}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v2, v0}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    .line 325
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual {p0, v1}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public write(Lorg/dom4j/Node;)V
    .locals 4
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    .line 127
    .local v0, nodeType:I
    packed-switch v0, :pswitch_data_0

    .line 180
    :pswitch_0
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Invalid node type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :pswitch_1
    check-cast p1, Lorg/dom4j/Element;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Element;)V

    .line 182
    :goto_0
    :pswitch_2
    return-void

    .line 134
    .restart local p1
    :pswitch_3
    check-cast p1, Lorg/dom4j/Attribute;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 139
    .restart local p1
    :pswitch_4
    invoke-interface {p1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :pswitch_5
    check-cast p1, Lorg/dom4j/CDATA;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/CDATA;)V

    goto :goto_0

    .line 149
    .restart local p1
    :pswitch_6
    check-cast p1, Lorg/dom4j/Entity;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Entity;)V

    goto :goto_0

    .line 154
    .restart local p1
    :pswitch_7
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_0

    .line 159
    .restart local p1
    :pswitch_8
    check-cast p1, Lorg/dom4j/Comment;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Comment;)V

    goto :goto_0

    .line 164
    .restart local p1
    :pswitch_9
    check-cast p1, Lorg/dom4j/Document;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Document;)V

    goto :goto_0

    .line 169
    .restart local p1
    :pswitch_a
    check-cast p1, Lorg/dom4j/DocumentType;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public write(Lorg/dom4j/ProcessingInstruction;)V
    .locals 3
    .parameter "pi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, target:Ljava/lang/String;
    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2, v0, v1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public writeClose(Lorg/dom4j/Element;)V
    .locals 0
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->endElement(Lorg/dom4j/Element;)V

    .line 249
    return-void
.end method

.method protected writeContent(Lorg/dom4j/Branch;Lorg/dom4j/tree/NamespaceStack;)V
    .locals 7
    .parameter "branch"
    .parameter "namespaceStack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 645
    return-void

    .line 616
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 618
    .local v2, object:Ljava/lang/Object;
    instance-of v4, v2, Lorg/dom4j/Element;

    if-eqz v4, :cond_1

    .line 619
    check-cast v2, Lorg/dom4j/Element;

    .end local v2           #object:Ljava/lang/Object;
    invoke-virtual {p0, v2, p2}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Element;Lorg/dom4j/tree/NamespaceStack;)V

    goto :goto_0

    .line 620
    .restart local v2       #object:Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Lorg/dom4j/CharacterData;

    if-eqz v4, :cond_5

    .line 621
    instance-of v4, v2, Lorg/dom4j/Text;

    if-eqz v4, :cond_2

    .line 622
    move-object v0, v2

    check-cast v0, Lorg/dom4j/Text;

    move-object v3, v0

    .line 623
    .local v3, text:Lorg/dom4j/Text;
    invoke-interface {v3}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 624
    .end local v3           #text:Lorg/dom4j/Text;
    :cond_2
    instance-of v4, v2, Lorg/dom4j/CDATA;

    if-eqz v4, :cond_3

    .line 625
    check-cast v2, Lorg/dom4j/CDATA;

    .end local v2           #object:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/CDATA;)V

    goto :goto_0

    .line 626
    .restart local v2       #object:Ljava/lang/Object;
    :cond_3
    instance-of v4, v2, Lorg/dom4j/Comment;

    if-eqz v4, :cond_4

    .line 627
    check-cast v2, Lorg/dom4j/Comment;

    .end local v2           #object:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Comment;)V

    goto :goto_0

    .line 629
    .restart local v2       #object:Ljava/lang/Object;
    :cond_4
    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Invalid Node in DOM4J content: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " of type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 629
    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 632
    :cond_5
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 633
    check-cast v2, Ljava/lang/String;

    .end local v2           #object:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 634
    .restart local v2       #object:Ljava/lang/Object;
    :cond_6
    instance-of v4, v2, Lorg/dom4j/Entity;

    if-eqz v4, :cond_7

    .line 635
    check-cast v2, Lorg/dom4j/Entity;

    .end local v2           #object:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Entity;)V

    goto :goto_0

    .line 636
    .restart local v2       #object:Ljava/lang/Object;
    :cond_7
    instance-of v4, v2, Lorg/dom4j/ProcessingInstruction;

    if-eqz v4, :cond_8

    .line 637
    check-cast v2, Lorg/dom4j/ProcessingInstruction;

    .end local v2           #object:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_0

    .line 638
    .restart local v2       #object:Ljava/lang/Object;
    :cond_8
    instance-of v4, v2, Lorg/dom4j/Namespace;

    if-eqz v4, :cond_9

    .line 639
    check-cast v2, Lorg/dom4j/Namespace;

    .end local v2           #object:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Node;)V

    goto/16 :goto_0

    .line 641
    .restart local v2       #object:Ljava/lang/Object;
    :cond_9
    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Invalid Node in DOM4J content: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 641
    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public writeOpen(Lorg/dom4j/Element;)V
    .locals 1
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/SAXWriter;->startElement(Lorg/dom4j/Element;Lorg/xml/sax/helpers/AttributesImpl;)V

    .line 234
    return-void
.end method
