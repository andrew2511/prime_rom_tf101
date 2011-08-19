.class public Lorg/apache/xalan/processor/ProcessorInclude;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorInclude.java"


# static fields
.field static final serialVersionUID:J = -0x3f6c2e64b6cc7fc9L


# instance fields
.field private m_href:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/processor/ProcessorInclude;->m_href:Ljava/lang/String;

    return-void
.end method

.method private getBaseURIOfIncludedStylesheet(Lorg/apache/xalan/processor/StylesheetHandler;Ljavax/xml/transform/Source;)Ljava/lang/String;
    .registers 7
    .parameter "handler"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 380
    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .local v1, idFromUriResolverSource:Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 383
    move-object v0, v1

    .line 394
    .end local v1           #idFromUriResolverSource:Ljava/lang/String;
    .local v0, baseURI:Ljava/lang/String;
    :goto_9
    return-object v0

    .line 390
    .end local v0           #baseURI:Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #baseURI:Ljava/lang/String;
    goto :goto_9
.end method

.method private getSourceFromUriResolver(Lorg/apache/xalan/processor/StylesheetHandler;)Ljavax/xml/transform/Source;
    .registers 7
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v3, 0x0

    .line 351
    .local v3, s:Ljavax/xml/transform/Source;
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v2

    .line 352
    .local v2, processor:Lorg/apache/xalan/processor/TransformerFactoryImpl;
    invoke-virtual {v2}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object v4

    .line 353
    .local v4, uriresolver:Ljavax/xml/transform/URIResolver;
    if-eqz v4, :cond_17

    .line 354
    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, href:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, base:Ljava/lang/String;
    invoke-interface {v4, v1, v0}, Ljavax/xml/transform/URIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object v3

    .line 359
    .end local v0           #base:Ljava/lang/String;
    .end local v1           #href:Ljava/lang/String;
    :cond_17
    return-object v3
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorInclude;->m_href:Ljava/lang/String;

    return-object v0
.end method

.method protected getStylesheetInclErr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    const-string v0, "ER_STYLESHEET_INCLUDES_ITSELF"

    return-object v0
.end method

.method protected getStylesheetType()I
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x2

    return v0
.end method

.method protected parse(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 32
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
    .line 193
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v12

    .line 194
    .local v12, processor:Lorg/apache/xalan/processor/TransformerFactoryImpl;
    invoke-virtual {v12}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object v20

    .line 198
    .local v20, uriresolver:Ljavax/xml/transform/URIResolver;
    const/16 v16, 0x0

    .line 206
    .local v16, source:Ljavax/xml/transform/Source;
    if-eqz v20, :cond_79

    .line 212
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->peekSourceFromURIResolver()Ljavax/xml/transform/Source;

    move-result-object v16

    .line 214
    if-eqz v16, :cond_79

    move-object/from16 v0, v16

    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    move/from16 v22, v0

    if-eqz v22, :cond_79

    .line 216
    move-object/from16 v0, v16

    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v11

    .line 224
    .local v11, node:Lorg/w3c/dom/Node;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->peekImportURL()Ljava/lang/String;

    move-result-object v18

    .line 228
    .local v18, systemId:Ljava/lang/String;
    if-eqz v18, :cond_31

    .line 229
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushBaseIndentifier(Ljava/lang/String;)V

    .line 231
    :cond_31
    new-instance v21, Lorg/apache/xml/utils/TreeWalker;

    new-instance v22, Lorg/apache/xml/utils/DOM2Helper;

    invoke-direct/range {v22 .. v22}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_43} :catch_59
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_43} :catch_fe

    .line 235
    .local v21, walker:Lorg/apache/xml/utils/TreeWalker;
    :try_start_43
    move-object/from16 v0, v21

    move-object v1, v11

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_49
    .catch Lorg/xml/sax/SAXException; {:try_start_43 .. :try_end_49} :catch_4f
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_49} :catch_59
    .catch Ljavax/xml/transform/TransformerException; {:try_start_43 .. :try_end_49} :catch_fe

    .line 241
    if-eqz v18, :cond_4e

    .line 242
    :try_start_4b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popBaseIndentifier()Ljava/lang/String;

    .line 329
    .end local v11           #node:Lorg/w3c/dom/Node;
    .end local v18           #systemId:Ljava/lang/String;
    .end local v21           #walker:Lorg/apache/xml/utils/TreeWalker;
    :cond_4e
    :goto_4e
    return-void

    .line 237
    .restart local v11       #node:Lorg/w3c/dom/Node;
    .restart local v18       #systemId:Ljava/lang/String;
    .restart local v21       #walker:Lorg/apache/xml/utils/TreeWalker;
    :catch_4f
    move-exception v15

    .line 239
    .local v15, se:Lorg/xml/sax/SAXException;
    new-instance v22, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v22

    move-object v1, v15

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v22
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_59} :catch_59
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4b .. :try_end_59} :catch_fe

    .line 320
    .end local v11           #node:Lorg/w3c/dom/Node;
    .end local v15           #se:Lorg/xml/sax/SAXException;
    .end local v18           #systemId:Ljava/lang/String;
    .end local v21           #walker:Lorg/apache/xml/utils/TreeWalker;
    :catch_59
    move-exception v22

    move-object/from16 v9, v22

    .line 322
    .local v9, ioe:Ljava/io/IOException;
    :goto_5c
    const-string v22, "ER_IOEXCEPTION"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_4e

    .end local v9           #ioe:Ljava/io/IOException;
    :cond_79
    move-object/from16 v17, v16

    .line 247
    .end local v16           #source:Ljavax/xml/transform/Source;
    .local v17, source:Ljavax/xml/transform/Source;
    if-nez v17, :cond_141

    .line 249
    :try_start_7d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, absURL:Ljava/lang/String;
    new-instance v16, Ljavax/xml/transform/stream/StreamSource;

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_91} :catch_134
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7d .. :try_end_91} :catch_12e

    .line 256
    .end local v4           #absURL:Ljava/lang/String;
    .end local v17           #source:Ljavax/xml/transform/Source;
    .restart local v16       #source:Ljavax/xml/transform/Source;
    :goto_91
    :try_start_91
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/ProcessorInclude;->processSource(Lorg/apache/xalan/processor/StylesheetHandler;Ljavax/xml/transform/Source;)Ljavax/xml/transform/Source;

    move-result-object v16

    .line 258
    const/4 v13, 0x0

    .line 260
    .local v13, reader:Lorg/xml/sax/XMLReader;
    move-object/from16 v0, v16

    instance-of v0, v0, Ljavax/xml/transform/sax/SAXSource;

    move/from16 v22, v0

    if-eqz v22, :cond_ad

    .line 262
    move-object/from16 v0, v16

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    move-object v14, v0

    .line 263
    .local v14, saxSource:Ljavax/xml/transform/sax/SAXSource;
    invoke-virtual {v14}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v13

    .line 266
    .end local v14           #saxSource:Ljavax/xml/transform/sax/SAXSource;
    :cond_ad
    invoke-static/range {v16 .. v16}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_b0} :catch_59
    .catch Ljavax/xml/transform/TransformerException; {:try_start_91 .. :try_end_b0} :catch_fe

    move-result-object v8

    .line 268
    .local v8, inputSource:Lorg/xml/sax/InputSource;
    if-nez v13, :cond_dd

    .line 272
    :try_start_b3
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    .line 274
    .local v7, factory:Ljavax/xml/parsers/SAXParserFactory;
    const/16 v22, 0x1

    move-object v0, v7

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 276
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->isSecureProcessing()Z
    :try_end_c6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b3 .. :try_end_c6} :catch_110
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_b3 .. :try_end_c6} :catch_11c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_b3 .. :try_end_c6} :catch_13d
    .catch Ljava/lang/AbstractMethodError; {:try_start_b3 .. :try_end_c6} :catch_13b
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_c6} :catch_59
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b3 .. :try_end_c6} :catch_fe

    move-result v22

    if-eqz v22, :cond_d5

    .line 280
    :try_start_c9
    const-string v22, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/16 v23, 0x1

    move-object v0, v7

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_d5
    .catch Lorg/xml/sax/SAXException; {:try_start_c9 .. :try_end_d5} :catch_13f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c9 .. :try_end_d5} :catch_110
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_c9 .. :try_end_d5} :catch_11c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_c9 .. :try_end_d5} :catch_13d
    .catch Ljava/lang/AbstractMethodError; {:try_start_c9 .. :try_end_d5} :catch_13b
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_d5} :catch_59
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c9 .. :try_end_d5} :catch_fe

    .line 285
    :cond_d5
    :goto_d5
    :try_start_d5
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v10

    .line 287
    .local v10, jaxpParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v10}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_dc
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d5 .. :try_end_dc} :catch_110
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_d5 .. :try_end_dc} :catch_11c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_d5 .. :try_end_dc} :catch_13d
    .catch Ljava/lang/AbstractMethodError; {:try_start_d5 .. :try_end_dc} :catch_13b
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_dc} :catch_59
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d5 .. :try_end_dc} :catch_fe

    move-result-object v13

    .line 299
    .end local v7           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v10           #jaxpParser:Ljavax/xml/parsers/SAXParser;
    :cond_dd
    :goto_dd
    if-nez v13, :cond_e3

    .line 300
    :try_start_df
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v13

    .line 302
    :cond_e3
    if-eqz v13, :cond_4e

    .line 304
    move-object v0, v13

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 308
    invoke-virtual {v8}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushBaseIndentifier(Ljava/lang/String;)V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_f6} :catch_59
    .catch Ljavax/xml/transform/TransformerException; {:try_start_df .. :try_end_f6} :catch_fe

    .line 312
    :try_start_f6
    invoke-interface {v13, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_129

    .line 316
    :try_start_f9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popBaseIndentifier()Ljava/lang/String;
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_59
    .catch Ljavax/xml/transform/TransformerException; {:try_start_f9 .. :try_end_fc} :catch_fe

    goto/16 :goto_4e

    .line 325
    .end local v8           #inputSource:Lorg/xml/sax/InputSource;
    .end local v13           #reader:Lorg/xml/sax/XMLReader;
    :catch_fe
    move-exception v22

    move-object/from16 v19, v22

    .line 327
    .local v19, te:Ljavax/xml/transform/TransformerException;
    :goto_101
    invoke-virtual/range {v19 .. v19}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_4e

    .line 289
    .end local v19           #te:Ljavax/xml/transform/TransformerException;
    .restart local v8       #inputSource:Lorg/xml/sax/InputSource;
    .restart local v13       #reader:Lorg/xml/sax/XMLReader;
    :catch_110
    move-exception v22

    move-object/from16 v5, v22

    .line 290
    .local v5, ex:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_113
    new-instance v22, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v22

    .line 291
    .end local v5           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_11c
    move-exception v22

    move-object/from16 v6, v22

    .line 292
    .local v6, ex1:Ljavax/xml/parsers/FactoryConfigurationError;
    new-instance v22, Lorg/xml/sax/SAXException;

    invoke-virtual {v6}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 316
    .end local v6           #ex1:Ljavax/xml/parsers/FactoryConfigurationError;
    :catchall_129
    move-exception v22

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popBaseIndentifier()Ljava/lang/String;

    throw v22
    :try_end_12e
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_12e} :catch_59
    .catch Ljavax/xml/transform/TransformerException; {:try_start_113 .. :try_end_12e} :catch_fe

    .line 325
    .end local v8           #inputSource:Lorg/xml/sax/InputSource;
    .end local v13           #reader:Lorg/xml/sax/XMLReader;
    .end local v16           #source:Ljavax/xml/transform/Source;
    .restart local v17       #source:Ljavax/xml/transform/Source;
    :catch_12e
    move-exception v22

    move-object/from16 v19, v22

    move-object/from16 v16, v17

    .end local v17           #source:Ljavax/xml/transform/Source;
    .restart local v16       #source:Ljavax/xml/transform/Source;
    goto :goto_101

    .line 320
    .end local v16           #source:Ljavax/xml/transform/Source;
    .restart local v17       #source:Ljavax/xml/transform/Source;
    :catch_134
    move-exception v22

    move-object/from16 v9, v22

    move-object/from16 v16, v17

    .end local v17           #source:Ljavax/xml/transform/Source;
    .restart local v16       #source:Ljavax/xml/transform/Source;
    goto/16 :goto_5c

    .line 297
    .restart local v8       #inputSource:Lorg/xml/sax/InputSource;
    .restart local v13       #reader:Lorg/xml/sax/XMLReader;
    :catch_13b
    move-exception v22

    goto :goto_dd

    .line 294
    :catch_13d
    move-exception v22

    goto :goto_dd

    .line 282
    .restart local v7       #factory:Ljavax/xml/parsers/SAXParserFactory;
    :catch_13f
    move-exception v22

    goto :goto_d5

    .end local v7           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v8           #inputSource:Lorg/xml/sax/InputSource;
    .end local v13           #reader:Lorg/xml/sax/XMLReader;
    .end local v16           #source:Ljavax/xml/transform/Source;
    .restart local v17       #source:Ljavax/xml/transform/Source;
    :cond_141
    move-object/from16 v16, v17

    .end local v17           #source:Ljavax/xml/transform/Source;
    .restart local v16       #source:Ljavax/xml/transform/Source;
    goto/16 :goto_91
.end method

.method protected processSource(Lorg/apache/xalan/processor/StylesheetHandler;Ljavax/xml/transform/Source;)Ljavax/xml/transform/Source;
    .registers 3
    .parameter "handler"
    .parameter "source"

    .prologue
    .line 340
    return-object p2
.end method

.method public setHref(Ljava/lang/String;)V
    .registers 2
    .parameter "baseIdent"

    .prologue
    .line 81
    iput-object p1, p0, Lorg/apache/xalan/processor/ProcessorInclude;->m_href:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 14
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
    .line 129
    invoke-virtual {p0, p1, p4, p5, p0}, Lorg/apache/xalan/processor/ProcessorInclude;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 135
    :try_start_3
    invoke-direct {p0, p1}, Lorg/apache/xalan/processor/ProcessorInclude;->getSourceFromUriResolver(Lorg/apache/xalan/processor/StylesheetHandler;)Ljavax/xml/transform/Source;

    move-result-object v2

    .line 137
    .local v2, sourceFromURIResolver:Ljavax/xml/transform/Source;
    invoke-direct {p0, p1, v2}, Lorg/apache/xalan/processor/ProcessorInclude;->getBaseURIOfIncludedStylesheet(Lorg/apache/xalan/processor/StylesheetHandler;Ljavax/xml/transform/Source;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, hrefUrl:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->importStackContains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 141
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getStylesheetInclErr()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_25
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_25} :catch_25

    .line 168
    .end local v0           #hrefUrl:Ljava/lang/String;
    .end local v2           #sourceFromURIResolver:Ljavax/xml/transform/Source;
    :catch_25
    move-exception v4

    move-object v3, v4

    .line 170
    .local v3, te:Ljavax/xml/transform/TransformerException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 172
    .end local v3           #te:Ljavax/xml/transform/TransformerException;
    :goto_2e
    return-void

    .line 148
    .restart local v0       #hrefUrl:Ljava/lang/String;
    .restart local v2       #sourceFromURIResolver:Ljavax/xml/transform/Source;
    :cond_2f
    :try_start_2f
    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushImportURL(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->pushImportSource(Ljavax/xml/transform/Source;)V

    .line 151
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetType()I

    move-result v1

    .line 153
    .local v1, savedStylesheetType:I
    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getStylesheetType()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/xalan/processor/StylesheetHandler;->setStylesheetType(I)V

    .line 154
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushNewNamespaceSupport()V
    :try_end_43
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2f .. :try_end_43} :catch_25

    .line 158
    :try_start_43
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/processor/ProcessorInclude;->parse(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_53

    .line 162
    :try_start_46
    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->setStylesheetType(I)V

    .line 163
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popImportURL()Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popImportSource()Ljavax/xml/transform/Source;

    .line 165
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popNamespaceSupport()V

    goto :goto_2e

    .line 162
    :catchall_53
    move-exception v4

    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->setStylesheetType(I)V

    .line 163
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popImportURL()Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popImportSource()Ljavax/xml/transform/Source;

    .line 165
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popNamespaceSupport()V

    throw v4
    :try_end_61
    .catch Ljavax/xml/transform/TransformerException; {:try_start_46 .. :try_end_61} :catch_25
.end method
