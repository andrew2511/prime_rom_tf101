.class public Lorg/apache/xpath/SourceTreeManager;
.super Ljava/lang/Object;
.source "SourceTreeManager.java"


# instance fields
.field private m_sourceTree:Ljava/util/Vector;

.field m_uriResolver:Ljavax/xml/transform/URIResolver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    return-void
.end method

.method public static getXMLReader(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;)Lorg/xml/sax/XMLReader;
    .registers 10
    .parameter "inputSource"
    .parameter "locator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 347
    :try_start_0
    instance-of v6, p0, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v6, :cond_2a

    check-cast p0, Ljavax/xml/transform/sax/SAXSource;

    .end local p0
    invoke-virtual {p0}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_9
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_9} :catch_35

    move-result-object v6

    move-object v4, v6

    .line 350
    .local v4, reader:Lorg/xml/sax/XMLReader;
    :goto_b
    if-nez v4, :cond_23

    .line 353
    :try_start_d
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 355
    .local v2, factory:Ljavax/xml/parsers/SAXParserFactory;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 356
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 358
    .local v3, jaxpParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_1c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_1c} :catch_2d
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_d .. :try_end_1c} :catch_41
    .catch Ljava/lang/NoSuchMethodError; {:try_start_d .. :try_end_1c} :catch_51
    .catch Ljava/lang/AbstractMethodError; {:try_start_d .. :try_end_1c} :catch_4f
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_1c} :catch_35

    move-result-object v4

    .line 367
    .end local v2           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v3           #jaxpParser:Ljavax/xml/parsers/SAXParser;
    :goto_1d
    if-nez v4, :cond_23

    .line 368
    :try_start_1f
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_22
    .catch Lorg/xml/sax/SAXException; {:try_start_1f .. :try_end_22} :catch_35

    move-result-object v4

    .line 373
    :cond_23
    :try_start_23
    const-string v6, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_29
    .catch Lorg/xml/sax/SAXException; {:try_start_23 .. :try_end_29} :catch_4d

    .line 383
    :goto_29
    return-object v4

    .line 347
    .end local v4           #reader:Lorg/xml/sax/XMLReader;
    .restart local p0
    :cond_2a
    const/4 v6, 0x0

    move-object v4, v6

    goto :goto_b

    .line 360
    .end local p0
    .restart local v4       #reader:Lorg/xml/sax/XMLReader;
    :catch_2d
    move-exception v6

    move-object v0, v6

    .line 361
    .local v0, ex:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_2f
    new-instance v6, Lorg/xml/sax/SAXException;

    invoke-direct {v6, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_35
    .catch Lorg/xml/sax/SAXException; {:try_start_2f .. :try_end_35} :catch_35

    .line 385
    .end local v0           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    .end local v4           #reader:Lorg/xml/sax/XMLReader;
    :catch_35
    move-exception v6

    move-object v5, v6

    .line 387
    .local v5, se:Lorg/xml/sax/SAXException;
    new-instance v6, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p1, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    throw v6

    .line 362
    .end local v5           #se:Lorg/xml/sax/SAXException;
    .restart local v4       #reader:Lorg/xml/sax/XMLReader;
    :catch_41
    move-exception v6

    move-object v1, v6

    .line 363
    .local v1, ex1:Ljavax/xml/parsers/FactoryConfigurationError;
    :try_start_43
    new-instance v6, Lorg/xml/sax/SAXException;

    invoke-virtual {v1}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4d
    .catch Lorg/xml/sax/SAXException; {:try_start_43 .. :try_end_4d} :catch_35

    .line 376
    .end local v1           #ex1:Ljavax/xml/parsers/FactoryConfigurationError;
    :catch_4d
    move-exception v6

    goto :goto_29

    .line 366
    :catch_4f
    move-exception v6

    goto :goto_1d

    .line 364
    :catch_51
    move-exception v6

    goto :goto_1d
.end method


# virtual methods
.method public findURIFromDoc(I)Ljava/lang/String;
    .registers 6
    .parameter "owner"

    .prologue
    .line 92
    iget-object v3, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 94
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_1b

    .line 96
    iget-object v3, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xpath/SourceTree;

    .line 98
    .local v2, sTree:Lorg/apache/xpath/SourceTree;
    iget v3, v2, Lorg/apache/xpath/SourceTree;->m_root:I

    if-ne p1, v3, :cond_18

    .line 99
    iget-object v3, v2, Lorg/apache/xpath/SourceTree;->m_url:Ljava/lang/String;

    .line 102
    .end local v2           #sTree:Lorg/apache/xpath/SourceTree;
    :goto_17
    return-object v3

    .line 94
    .restart local v2       #sTree:Lorg/apache/xpath/SourceTree;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 102
    .end local v2           #sTree:Lorg/apache/xpath/SourceTree;
    :cond_1b
    const/4 v3, 0x0

    goto :goto_17
.end method

.method public getNode(Ljavax/xml/transform/Source;)I
    .registers 8
    .parameter "source"

    .prologue
    const/4 v5, -0x1

    .line 203
    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, url:Ljava/lang/String;
    if-nez v3, :cond_9

    move v4, v5

    .line 222
    :goto_8
    return v4

    .line 208
    :cond_9
    iget-object v4, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    .line 211
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v1, :cond_28

    .line 213
    iget-object v4, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xpath/SourceTree;

    .line 217
    .local v2, sTree:Lorg/apache/xpath/SourceTree;
    iget-object v4, v2, Lorg/apache/xpath/SourceTree;->m_url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 218
    iget v4, v2, Lorg/apache/xpath/SourceTree;->m_root:I

    goto :goto_8

    .line 211
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .end local v2           #sTree:Lorg/apache/xpath/SourceTree;
    :cond_28
    move v4, v5

    .line 222
    goto :goto_8
.end method

.method public getSourceTree(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I
    .registers 9
    .parameter "base"
    .parameter "urlString"
    .parameter "locator"
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 245
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/SourceTreeManager;->resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;

    move-result-object v1

    .line 248
    .local v1, source:Ljavax/xml/transform/Source;
    invoke-virtual {p0, v1, p3, p4}, Lorg/apache/xpath/SourceTreeManager;->getSourceTree(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v2

    return v2

    .line 250
    .end local v1           #source:Ljavax/xml/transform/Source;
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 252
    .local v0, ioe:Ljava/io/IOException;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p3, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSourceTree(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I
    .registers 7
    .parameter "source"
    .parameter "locator"
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 276
    invoke-virtual {p0, p1}, Lorg/apache/xpath/SourceTreeManager;->getNode(Ljavax/xml/transform/Source;)I

    move-result v0

    .line 278
    .local v0, n:I
    if-eq v2, v0, :cond_9

    move v1, v0

    .line 286
    .end local v0           #n:I
    .local v1, n:I
    :goto_8
    return v1

    .line 281
    .end local v1           #n:I
    .restart local v0       #n:I
    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/SourceTreeManager;->parseToNode(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I

    move-result v0

    .line 283
    if-eq v2, v0, :cond_12

    .line 284
    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/SourceTreeManager;->putDocumentInCache(ILjavax/xml/transform/Source;)V

    :cond_12
    move v1, v0

    .line 286
    .end local v0           #n:I
    .restart local v1       #n:I
    goto :goto_8
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/xpath/SourceTreeManager;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-object v0
.end method

.method public parseToNode(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I
    .registers 14
    .parameter "source"
    .parameter "locator"
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 306
    :try_start_0
    invoke-virtual {p3}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object v9

    .line 308
    .local v9, xowner:Ljava/lang/Object;
    if-eqz v9, :cond_1c

    instance-of v1, v9, Lorg/apache/xml/dtm/DTMWSFilter;

    if-eqz v1, :cond_1c

    .line 310
    const/4 v3, 0x0

    move-object v0, v9

    check-cast v0, Lorg/apache/xml/dtm/DTMWSFilter;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p3

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xpath/XPathContext;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v7

    .line 317
    .local v7, dtm:Lorg/apache/xml/dtm/DTM;
    :goto_17
    invoke-interface {v7}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v1

    return v1

    .line 315
    .end local v7           #dtm:Lorg/apache/xml/dtm/DTM;
    :cond_1c
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p3

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xpath/XPathContext;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_27

    move-result-object v7

    .restart local v7       #dtm:Lorg/apache/xml/dtm/DTM;
    goto :goto_17

    .line 319
    .end local v7           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v9           #xowner:Ljava/lang/Object;
    :catch_27
    move-exception v1

    move-object v8, v1

    .line 322
    .local v8, e:Ljava/lang/Exception;
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2, v8}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public putDocumentInCache(ILjavax/xml/transform/Source;)V
    .registers 7
    .parameter "n"
    .parameter "source"

    .prologue
    .line 172
    invoke-virtual {p0, p2}, Lorg/apache/xpath/SourceTreeManager;->getNode(Ljavax/xml/transform/Source;)I

    move-result v0

    .line 174
    .local v0, cachedNode:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_26

    .line 176
    if-eq v0, p1, :cond_3a

    .line 177
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Programmer\'s Error!  putDocumentInCache found reparse of doc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_26
    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 185
    iget-object v1, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    new-instance v2, Lorg/apache/xpath/SourceTree;

    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/apache/xpath/SourceTree;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 187
    :cond_3a
    return-void
.end method

.method public removeDocumentFromCache(I)V
    .registers 6
    .parameter "n"

    .prologue
    .line 147
    const/4 v2, -0x1

    if-ne v2, p1, :cond_4

    .line 158
    :cond_3
    :goto_3
    return-void

    .line 149
    :cond_4
    iget-object v2, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_d
    if-ltz v0, :cond_3

    .line 151
    iget-object v2, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/SourceTree;

    .line 152
    .local v1, st:Lorg/apache/xpath/SourceTree;
    if-eqz v1, :cond_23

    iget v2, v1, Lorg/apache/xpath/SourceTree;->m_root:I

    if-ne v2, p1, :cond_23

    .line 154
    iget-object v2, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_3

    .line 149
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_d
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 56
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    .line 57
    return-void
.end method

.method public resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;
    .registers 7
    .parameter "base"
    .parameter "urlString"
    .parameter "locator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, source:Ljavax/xml/transform/Source;
    iget-object v2, p0, Lorg/apache/xpath/SourceTreeManager;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz v2, :cond_b

    .line 127
    iget-object v2, p0, Lorg/apache/xpath/SourceTreeManager;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    invoke-interface {v2, p2, p1}, Ljavax/xml/transform/URIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object v0

    .line 130
    :cond_b
    if-nez v0, :cond_16

    .line 132
    invoke-static {p2, p1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, uri:Ljava/lang/String;
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    .end local v0           #source:Ljavax/xml/transform/Source;
    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    .line 137
    .end local v1           #uri:Ljava/lang/String;
    .restart local v0       #source:Ljavax/xml/transform/Source;
    :cond_16
    return-object v0
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .registers 2
    .parameter "resolver"

    .prologue
    .line 70
    iput-object p1, p0, Lorg/apache/xpath/SourceTreeManager;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    .line 71
    return-void
.end method
