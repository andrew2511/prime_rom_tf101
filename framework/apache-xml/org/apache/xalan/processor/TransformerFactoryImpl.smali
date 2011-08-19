.class public Lorg/apache/xalan/processor/TransformerFactoryImpl;
.super Ljavax/xml/transform/sax/SAXTransformerFactory;
.source "TransformerFactoryImpl.java"


# static fields
.field public static final FEATURE_INCREMENTAL:Ljava/lang/String; = "http://xml.apache.org/xalan/features/incremental"

.field public static final FEATURE_OPTIMIZE:Ljava/lang/String; = "http://xml.apache.org/xalan/features/optimize"

.field public static final FEATURE_SOURCE_LOCATION:Ljava/lang/String; = "http://xml.apache.org/xalan/properties/source-location"

.field public static final XSLT_PROPERTIES:Ljava/lang/String; = "org/apache/xalan/res/XSLTInfo.properties"


# instance fields
.field private m_DOMsystemID:Ljava/lang/String;

.field private m_errorListener:Ljavax/xml/transform/ErrorListener;

.field private m_incremental:Z

.field private m_isSecureProcessing:Z

.field private m_optimize:Z

.field private m_source_location:Z

.field m_uriResolver:Ljavax/xml/transform/URIResolver;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXTransformerFactory;-><init>()V

    .line 86
    iput-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_DOMsystemID:Ljava/lang/String;

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    .line 490
    iput-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    .line 498
    iput-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    .line 1004
    new-instance v0, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    .line 94
    return-void
.end method


# virtual methods
.method public getAssociatedStylesheet(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .registers 25
    .parameter "source"
    .parameter "media"
    .parameter "title"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v12, 0x0

    .line 262
    .local v12, isource:Lorg/xml/sax/InputSource;
    const/4 v14, 0x0

    .line 263
    .local v14, node:Lorg/w3c/dom/Node;
    const/4 v15, 0x0

    .line 265
    .local v15, reader:Lorg/xml/sax/XMLReader;
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    move/from16 v18, v0

    if-eqz v18, :cond_56

    .line 267
    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    move-object v6, v0

    .line 269
    .local v6, dsource:Ljavax/xml/transform/dom/DOMSource;
    invoke-virtual {v6}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v14

    .line 270
    invoke-virtual {v6}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    .line 281
    .end local v6           #dsource:Ljavax/xml/transform/dom/DOMSource;
    .local v5, baseID:Ljava/lang/String;
    :goto_18
    new-instance v10, Lorg/apache/xml/utils/StylesheetPIHandler;

    move-object v0, v10

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/xml/utils/StylesheetPIHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .local v10, handler:Lorg/apache/xml/utils/StylesheetPIHandler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    move-object/from16 v18, v0

    if-eqz v18, :cond_39

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    move-object/from16 v18, v0

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/StylesheetPIHandler;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 292
    :cond_39
    if-eqz v14, :cond_5f

    .line 294
    :try_start_3b
    new-instance v17, Lorg/apache/xml/utils/TreeWalker;

    new-instance v18, Lorg/apache/xml/utils/DOM2Helper;

    invoke-direct/range {v18 .. v18}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v10

    move-object/from16 v2, v18

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V

    .line 296
    .local v17, walker:Lorg/apache/xml/utils/TreeWalker;
    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_51
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_3b .. :try_end_51} :catch_94
    .catch Lorg/xml/sax/SAXException; {:try_start_3b .. :try_end_51} :catch_a2
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_51} :catch_c0

    .line 359
    .end local v17           #walker:Lorg/apache/xml/utils/TreeWalker;
    :goto_51
    invoke-virtual {v10}, Lorg/apache/xml/utils/StylesheetPIHandler;->getAssociatedStylesheet()Ljavax/xml/transform/Source;

    move-result-object v18

    return-object v18

    .line 274
    .end local v5           #baseID:Ljava/lang/String;
    .end local v10           #handler:Lorg/apache/xml/utils/StylesheetPIHandler;
    :cond_56
    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v12

    .line 275
    invoke-virtual {v12}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #baseID:Ljava/lang/String;
    goto :goto_18

    .line 304
    .restart local v10       #handler:Lorg/apache/xml/utils/StylesheetPIHandler;
    :cond_5f
    :try_start_5f
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v9

    .line 307
    .local v9, factory:Ljavax/xml/parsers/SAXParserFactory;
    const/16 v18, 0x1

    move-object v0, v9

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 309
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    move/from16 v18, v0
    :try_end_71
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5f .. :try_end_71} :catch_96
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_5f .. :try_end_71} :catch_b3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5f .. :try_end_71} :catch_d2
    .catch Ljava/lang/AbstractMethodError; {:try_start_5f .. :try_end_71} :catch_d0
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_5f .. :try_end_71} :catch_94
    .catch Lorg/xml/sax/SAXException; {:try_start_5f .. :try_end_71} :catch_a2
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_71} :catch_c0

    if-eqz v18, :cond_7f

    .line 313
    :try_start_73
    const-string v18, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/16 v19, 0x1

    move-object v0, v9

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_7f
    .catch Lorg/xml/sax/SAXException; {:try_start_73 .. :try_end_7f} :catch_d4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_73 .. :try_end_7f} :catch_96
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_73 .. :try_end_7f} :catch_b3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_73 .. :try_end_7f} :catch_d2
    .catch Ljava/lang/AbstractMethodError; {:try_start_73 .. :try_end_7f} :catch_d0
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_73 .. :try_end_7f} :catch_94
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7f} :catch_c0

    .line 318
    :cond_7f
    :goto_7f
    :try_start_7f
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v13

    .line 320
    .local v13, jaxpParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v13}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_86
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7f .. :try_end_86} :catch_96
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_7f .. :try_end_86} :catch_b3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_7f .. :try_end_86} :catch_d2
    .catch Ljava/lang/AbstractMethodError; {:try_start_7f .. :try_end_86} :catch_d0
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_7f .. :try_end_86} :catch_94
    .catch Lorg/xml/sax/SAXException; {:try_start_7f .. :try_end_86} :catch_a2
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_86} :catch_c0

    move-result-object v15

    .line 333
    .end local v9           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v13           #jaxpParser:Ljavax/xml/parsers/SAXParser;
    :goto_87
    if-nez v15, :cond_8d

    .line 335
    :try_start_89
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v15

    .line 339
    :cond_8d
    invoke-interface {v15, v10}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 340
    invoke-interface {v15, v12}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    goto :goto_51

    .line 343
    :catch_94
    move-exception v18

    goto :goto_51

    .line 322
    :catch_96
    move-exception v18

    move-object/from16 v7, v18

    .line 324
    .local v7, ex:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v18, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v18
    :try_end_a2
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_89 .. :try_end_a2} :catch_94
    .catch Lorg/xml/sax/SAXException; {:try_start_89 .. :try_end_a2} :catch_a2
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_a2} :catch_c0

    .line 348
    .end local v7           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_a2
    move-exception v18

    move-object/from16 v16, v18

    .line 350
    .local v16, se:Lorg/xml/sax/SAXException;
    new-instance v18, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v19, "getAssociatedStylesheets failed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 326
    .end local v16           #se:Lorg/xml/sax/SAXException;
    :catch_b3
    move-exception v18

    move-object/from16 v8, v18

    .line 328
    .local v8, ex1:Ljavax/xml/parsers/FactoryConfigurationError;
    :try_start_b6
    new-instance v18, Lorg/xml/sax/SAXException;

    invoke-virtual {v8}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_c0
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_b6 .. :try_end_c0} :catch_94
    .catch Lorg/xml/sax/SAXException; {:try_start_b6 .. :try_end_c0} :catch_a2
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_c0} :catch_c0

    .line 353
    .end local v8           #ex1:Ljavax/xml/parsers/FactoryConfigurationError;
    :catch_c0
    move-exception v18

    move-object/from16 v11, v18

    .line 355
    .local v11, ioe:Ljava/io/IOException;
    new-instance v18, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v19, "getAssociatedStylesheets failed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 331
    .end local v11           #ioe:Ljava/io/IOException;
    :catch_d0
    move-exception v18

    goto :goto_87

    .line 330
    :catch_d2
    move-exception v18

    goto :goto_87

    .line 315
    .restart local v9       #factory:Ljavax/xml/parsers/SAXParserFactory;
    :catch_d4
    move-exception v18

    goto :goto_7f
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 592
    const-string v0, "http://xml.apache.org/xalan/features/incremental"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 594
    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    .line 602
    :goto_f
    return-object v0

    .line 596
    :cond_10
    const-string v0, "http://xml.apache.org/xalan/features/optimize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 598
    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_f

    .line 600
    :cond_20
    const-string v0, "http://xml.apache.org/xalan/properties/source-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 602
    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_f

    .line 605
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_ATTRIB_VALUE_NOT_RECOGNIZED"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getDOMsystemID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_DOMsystemID:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .registers 2

    .prologue
    .line 1013
    iget-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 5
    .parameter "name"

    .prologue
    const/4 v1, 0x1

    .line 440
    if-nez p1, :cond_10

    .line 442
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ER_GET_FEATURE_NULL_NAME"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_10
    const-string v0, "http://javax.xml.transform.dom.DOMResult/feature"

    if-eq v0, p1, :cond_30

    const-string v0, "http://javax.xml.transform.dom.DOMSource/feature"

    if-eq v0, p1, :cond_30

    const-string v0, "http://javax.xml.transform.sax.SAXResult/feature"

    if-eq v0, p1, :cond_30

    const-string v0, "http://javax.xml.transform.sax.SAXSource/feature"

    if-eq v0, p1, :cond_30

    const-string v0, "http://javax.xml.transform.stream.StreamResult/feature"

    if-eq v0, p1, :cond_30

    const-string v0, "http://javax.xml.transform.stream.StreamSource/feature"

    if-eq v0, p1, :cond_30

    const-string v0, "http://javax.xml.transform.sax.SAXTransformerFactory/feature"

    if-eq v0, p1, :cond_30

    const-string v0, "http://javax.xml.transform.sax.SAXTransformerFactory/feature/xmlfilter"

    if-ne v0, p1, :cond_32

    :cond_30
    move v0, v1

    .line 470
    :goto_31
    return v0

    .line 456
    :cond_32
    const-string v0, "http://javax.xml.transform.dom.DOMResult/feature"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    const-string v0, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    const-string v0, "http://javax.xml.transform.sax.SAXResult/feature"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    const-string v0, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    const-string v0, "http://javax.xml.transform.stream.StreamResult/feature"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    const-string v0, "http://javax.xml.transform.stream.StreamSource/feature"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    const-string v0, "http://javax.xml.transform.sax.SAXTransformerFactory/feature"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    const-string v0, "http://javax.xml.transform.sax.SAXTransformerFactory/feature/xmlfilter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    :cond_72
    move v0, v1

    .line 464
    goto :goto_31

    .line 466
    :cond_74
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 467
    iget-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    goto :goto_31

    .line 470
    :cond_7f
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .registers 2

    .prologue
    .line 1000
    iget-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-object v0
.end method

.method public isSecureProcessing()Z
    .registers 2

    .prologue
    .line 1041
    iget-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    return v0
.end method

.method public newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;
    .registers 20
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 844
    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v3

    .line 846
    .local v3, baseID:Ljava/lang/String;
    if-eqz v3, :cond_a

    .line 847
    invoke-static {v3}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 851
    :cond_a
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    move/from16 v16, v0

    if-eqz v16, :cond_37

    .line 853
    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    move-object v5, v0

    .line 854
    .local v5, dsource:Ljavax/xml/transform/dom/DOMSource;
    invoke-virtual {v5}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v13

    .line 856
    .local v13, node:Lorg/w3c/dom/Node;
    if-eqz v13, :cond_26

    .line 857
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->processFromNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljavax/xml/transform/Templates;

    move-result-object v16

    .line 970
    .end local v5           #dsource:Ljavax/xml/transform/dom/DOMSource;
    .end local v13           #node:Lorg/w3c/dom/Node;
    .end local p1
    :goto_25
    return-object v16

    .line 860
    .restart local v5       #dsource:Ljavax/xml/transform/dom/DOMSource;
    .restart local v13       #node:Lorg/w3c/dom/Node;
    .restart local p1
    :cond_26
    const-string v16, "ER_ILLEGAL_DOMSOURCE_INPUT"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 863
    .local v12, messageStr:Ljava/lang/String;
    new-instance v16, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 867
    .end local v5           #dsource:Ljavax/xml/transform/dom/DOMSource;
    .end local v12           #messageStr:Ljava/lang/String;
    .end local v13           #node:Lorg/w3c/dom/Node;
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;

    move-result-object v4

    .line 868
    .local v4, builder:Ljavax/xml/transform/sax/TemplatesHandler;
    invoke-interface {v4, v3}, Ljavax/xml/transform/sax/TemplatesHandler;->setSystemId(Ljava/lang/String;)V

    .line 872
    :try_start_3e
    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v10

    .line 873
    .local v10, isource:Lorg/xml/sax/InputSource;
    invoke-virtual {v10, v3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 874
    const/4 v14, 0x0

    .line 876
    .local v14, reader:Lorg/xml/sax/XMLReader;
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/sax/SAXSource;

    move/from16 v16, v0

    if-eqz v16, :cond_54

    .line 877
    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_53
    .catch Lorg/xml/sax/SAXException; {:try_start_3e .. :try_end_53} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_53} :catch_c9

    move-result-object v14

    .line 879
    :cond_54
    if-nez v14, :cond_7e

    .line 885
    :try_start_56
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v9

    .line 888
    .local v9, factory:Ljavax/xml/parsers/SAXParserFactory;
    const/16 v16, 0x1

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 890
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    move/from16 v16, v0
    :try_end_68
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_56 .. :try_end_68} :catch_8f
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_56 .. :try_end_68} :catch_bc
    .catch Ljava/lang/NoSuchMethodError; {:try_start_56 .. :try_end_68} :catch_126
    .catch Ljava/lang/AbstractMethodError; {:try_start_56 .. :try_end_68} :catch_123
    .catch Lorg/xml/sax/SAXException; {:try_start_56 .. :try_end_68} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_68} :catch_c9

    if-eqz v16, :cond_76

    .line 894
    :try_start_6a
    const-string v16, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/16 v17, 0x1

    move-object v0, v9

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_76
    .catch Lorg/xml/sax/SAXException; {:try_start_6a .. :try_end_76} :catch_129
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6a .. :try_end_76} :catch_8f
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_6a .. :try_end_76} :catch_bc
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6a .. :try_end_76} :catch_126
    .catch Ljava/lang/AbstractMethodError; {:try_start_6a .. :try_end_76} :catch_123
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_76} :catch_c9

    .line 899
    :cond_76
    :goto_76
    :try_start_76
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v11

    .line 901
    .local v11, jaxpParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v11}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_7d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_76 .. :try_end_7d} :catch_8f
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_76 .. :try_end_7d} :catch_bc
    .catch Ljava/lang/NoSuchMethodError; {:try_start_76 .. :try_end_7d} :catch_126
    .catch Ljava/lang/AbstractMethodError; {:try_start_76 .. :try_end_7d} :catch_123
    .catch Lorg/xml/sax/SAXException; {:try_start_76 .. :try_end_7d} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7d} :catch_c9

    move-result-object v14

    .line 915
    .end local v9           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v11           #jaxpParser:Ljavax/xml/parsers/SAXParser;
    :cond_7e
    :goto_7e
    if-nez v14, :cond_84

    .line 916
    :try_start_80
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v14

    .line 921
    :cond_84
    invoke-interface {v14, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 922
    invoke-interface {v14, v10}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_8a
    .catch Lorg/xml/sax/SAXException; {:try_start_80 .. :try_end_8a} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8a} :catch_c9

    .line 970
    .end local v10           #isource:Lorg/xml/sax/InputSource;
    .end local v14           #reader:Lorg/xml/sax/XMLReader;
    :goto_8a
    invoke-interface {v4}, Ljavax/xml/transform/sax/TemplatesHandler;->getTemplates()Ljavax/xml/transform/Templates;

    move-result-object v16

    goto :goto_25

    .line 903
    .restart local v10       #isource:Lorg/xml/sax/InputSource;
    .restart local v14       #reader:Lorg/xml/sax/XMLReader;
    :catch_8f
    move-exception v16

    move-object/from16 v7, v16

    .line 905
    .local v7, ex:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_92
    new-instance v16, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v16
    :try_end_9b
    .catch Lorg/xml/sax/SAXException; {:try_start_92 .. :try_end_9b} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9b} :catch_c9

    .line 924
    .end local v7           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    .end local v10           #isource:Lorg/xml/sax/InputSource;
    .end local v14           #reader:Lorg/xml/sax/XMLReader;
    :catch_9b
    move-exception v16

    move-object/from16 v15, v16

    .line 926
    .local v15, se:Lorg/xml/sax/SAXException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    move-object/from16 v16, v0

    if-eqz v16, :cond_f5

    .line 930
    :try_start_a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    move-object/from16 v16, v0

    new-instance v17, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface/range {v16 .. v17}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_b7
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_a6 .. :try_end_b7} :catch_b8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a6 .. :try_end_b7} :catch_e9

    goto :goto_8a

    .line 932
    :catch_b8
    move-exception v16

    move-object/from16 v8, v16

    .line 934
    .local v8, ex1:Ljavax/xml/transform/TransformerConfigurationException;
    throw v8

    .line 907
    .end local v8           #ex1:Ljavax/xml/transform/TransformerConfigurationException;
    .end local v15           #se:Lorg/xml/sax/SAXException;
    .restart local v10       #isource:Lorg/xml/sax/InputSource;
    .restart local v14       #reader:Lorg/xml/sax/XMLReader;
    :catch_bc
    move-exception v16

    move-object/from16 v8, v16

    .line 909
    .local v8, ex1:Ljavax/xml/parsers/FactoryConfigurationError;
    :try_start_bf
    new-instance v16, Lorg/xml/sax/SAXException;

    invoke-virtual {v8}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_c9
    .catch Lorg/xml/sax/SAXException; {:try_start_bf .. :try_end_c9} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c9} :catch_c9

    .line 946
    .end local v8           #ex1:Ljavax/xml/parsers/FactoryConfigurationError;
    .end local v10           #isource:Lorg/xml/sax/InputSource;
    .end local v14           #reader:Lorg/xml/sax/XMLReader;
    :catch_c9
    move-exception v16

    move-object/from16 v6, v16

    .line 948
    .local v6, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    move-object/from16 v16, v0

    if-eqz v16, :cond_114

    .line 952
    :try_start_d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    move-object/from16 v16, v0

    new-instance v17, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface/range {v16 .. v17}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_e5
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_d4 .. :try_end_e5} :catch_104
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d4 .. :try_end_e5} :catch_108

    .line 953
    const/16 v16, 0x0

    goto/16 :goto_25

    .line 936
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v15       #se:Lorg/xml/sax/SAXException;
    :catch_e9
    move-exception v16

    move-object/from16 v8, v16

    .line 938
    .local v8, ex1:Ljavax/xml/transform/TransformerException;
    new-instance v16, Ljavax/xml/transform/TransformerConfigurationException;

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v16

    .line 943
    .end local v8           #ex1:Ljavax/xml/transform/TransformerException;
    :cond_f5
    new-instance v16, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {v15}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 955
    .end local v15           #se:Lorg/xml/sax/SAXException;
    .restart local v6       #e:Ljava/lang/Exception;
    :catch_104
    move-exception v16

    move-object/from16 v8, v16

    .line 957
    .local v8, ex1:Ljavax/xml/transform/TransformerConfigurationException;
    throw v8

    .line 959
    .end local v8           #ex1:Ljavax/xml/transform/TransformerConfigurationException;
    :catch_108
    move-exception v16

    move-object/from16 v8, v16

    .line 961
    .local v8, ex1:Ljavax/xml/transform/TransformerException;
    new-instance v16, Ljavax/xml/transform/TransformerConfigurationException;

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v16

    .line 966
    .end local v8           #ex1:Ljavax/xml/transform/TransformerException;
    :cond_114
    new-instance v16, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 912
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v10       #isource:Lorg/xml/sax/InputSource;
    .restart local v14       #reader:Lorg/xml/sax/XMLReader;
    :catch_123
    move-exception v16

    goto/16 :goto_7e

    .line 911
    :catch_126
    move-exception v16

    goto/16 :goto_7e

    .line 896
    .restart local v9       #factory:Ljavax/xml/parsers/SAXParserFactory;
    :catch_129
    move-exception v16

    goto/16 :goto_76
.end method

.method public newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 376
    new-instance v0, Lorg/apache/xalan/processor/StylesheetHandler;

    invoke-direct {v0, p0}, Lorg/apache/xalan/processor/StylesheetHandler;-><init>(Lorg/apache/xalan/processor/TransformerFactoryImpl;)V

    return-object v0
.end method

.method public newTransformer()Ljavax/xml/transform/Transformer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 823
    new-instance v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;-><init>(Z)V

    return-object v0
.end method

.method public newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;
    .registers 8
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 776
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v2

    .line 783
    .local v2, tmpl:Ljavax/xml/transform/Templates;
    if-nez v2, :cond_9

    move-object v4, v5

    .line 795
    .end local v2           #tmpl:Ljavax/xml/transform/Templates;
    :goto_8
    return-object v4

    .line 784
    .restart local v2       #tmpl:Ljavax/xml/transform/Templates;
    :cond_9
    invoke-interface {v2}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    .line 785
    .local v3, transformer:Ljavax/xml/transform/Transformer;
    iget-object v4, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    invoke-virtual {v3, v4}, Ljavax/xml/transform/Transformer;->setURIResolver(Ljavax/xml/transform/URIResolver;)V
    :try_end_12
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_12} :catch_14

    move-object v4, v3

    .line 786
    goto :goto_8

    .line 788
    .end local v2           #tmpl:Ljavax/xml/transform/Templates;
    .end local v3           #transformer:Ljavax/xml/transform/Transformer;
    :catch_14
    move-exception v4

    move-object v0, v4

    .line 790
    .local v0, ex:Ljavax/xml/transform/TransformerConfigurationException;
    iget-object v4, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v4, :cond_2c

    .line 794
    :try_start_1a
    iget-object v4, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    invoke-interface {v4, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1f
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1a .. :try_end_1f} :catch_21
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1a .. :try_end_1f} :catch_24

    move-object v4, v5

    .line 795
    goto :goto_8

    .line 797
    :catch_21
    move-exception v4

    move-object v1, v4

    .line 799
    .local v1, ex1:Ljavax/xml/transform/TransformerConfigurationException;
    throw v1

    .line 801
    .end local v1           #ex1:Ljavax/xml/transform/TransformerConfigurationException;
    :catch_24
    move-exception v4

    move-object v1, v4

    .line 803
    .local v1, ex1:Ljavax/xml/transform/TransformerException;
    new-instance v4, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v4, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 806
    .end local v1           #ex1:Ljavax/xml/transform/TransformerException;
    :cond_2c
    throw v0
.end method

.method public newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 755
    new-instance v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;-><init>(Z)V

    return-object v0
.end method

.method public newTransformerHandler(Ljavax/xml/transform/Source;)Ljavax/xml/transform/sax/TransformerHandler;
    .registers 4
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 682
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v0

    .line 683
    .local v0, templates:Ljavax/xml/transform/Templates;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 685
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {p0, v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v1

    goto :goto_7
.end method

.method public newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;
    .registers 7
    .parameter "templates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 701
    :try_start_0
    invoke-interface {p1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/transformer/TransformerImpl;

    .line 703
    .local v3, transformer:Lorg/apache/xalan/transformer/TransformerImpl;
    iget-object v4, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    invoke-virtual {v3, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 704
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->getInputContentHandler(Z)Lorg/xml/sax/ContentHandler;

    move-result-object v2

    check-cast v2, Ljavax/xml/transform/sax/TransformerHandler;
    :try_end_12
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_12} :catch_14

    .local v2, th:Ljavax/xml/transform/sax/TransformerHandler;
    move-object v4, v2

    .line 716
    .end local v2           #th:Ljavax/xml/transform/sax/TransformerHandler;
    .end local v3           #transformer:Lorg/apache/xalan/transformer/TransformerImpl;
    :goto_13
    return-object v4

    .line 709
    :catch_14
    move-exception v4

    move-object v0, v4

    .line 711
    .local v0, ex:Ljavax/xml/transform/TransformerConfigurationException;
    iget-object v4, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v4, :cond_2c

    .line 715
    :try_start_1a
    iget-object v4, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    invoke-interface {v4, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1f
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1a .. :try_end_1f} :catch_21
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1a .. :try_end_1f} :catch_24

    .line 716
    const/4 v4, 0x0

    goto :goto_13

    .line 718
    :catch_21
    move-exception v4

    move-object v1, v4

    .line 720
    .local v1, ex1:Ljavax/xml/transform/TransformerConfigurationException;
    throw v1

    .line 722
    .end local v1           #ex1:Ljavax/xml/transform/TransformerConfigurationException;
    :catch_24
    move-exception v4

    move-object v1, v4

    .line 724
    .local v1, ex1:Ljavax/xml/transform/TransformerException;
    new-instance v4, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v4, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 728
    .end local v1           #ex1:Ljavax/xml/transform/TransformerException;
    :cond_2c
    throw v0
.end method

.method public newXMLFilter(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLFilter;
    .registers 4
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 622
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v0

    .line 623
    .local v0, templates:Ljavax/xml/transform/Templates;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 625
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {p0, v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;

    move-result-object v1

    goto :goto_7
.end method

.method public newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;
    .registers 5
    .parameter "templates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 643
    :try_start_0
    new-instance v2, Lorg/apache/xalan/transformer/TrAXFilter;

    invoke-direct {v2, p1}, Lorg/apache/xalan/transformer/TrAXFilter;-><init>(Ljavax/xml/transform/Templates;)V
    :try_end_5
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_5} :catch_6

    .line 652
    :goto_5
    return-object v2

    .line 645
    :catch_6
    move-exception v2

    move-object v0, v2

    .line 647
    .local v0, ex:Ljavax/xml/transform/TransformerConfigurationException;
    iget-object v2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v2, :cond_1e

    .line 651
    :try_start_c
    iget-object v2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    invoke-interface {v2, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_11
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_c .. :try_end_11} :catch_13
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_11} :catch_16

    .line 652
    const/4 v2, 0x0

    goto :goto_5

    .line 654
    :catch_13
    move-exception v2

    move-object v1, v2

    .line 656
    .local v1, ex1:Ljavax/xml/transform/TransformerConfigurationException;
    throw v1

    .line 658
    .end local v1           #ex1:Ljavax/xml/transform/TransformerConfigurationException;
    :catch_16
    move-exception v2

    move-object v1, v2

    .line 660
    .local v1, ex1:Ljavax/xml/transform/TransformerException;
    new-instance v2, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v2, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 663
    .end local v1           #ex1:Ljavax/xml/transform/TransformerException;
    :cond_1e
    throw v0
.end method

.method public processFromNode(Lorg/w3c/dom/Node;)Ljavax/xml/transform/Templates;
    .registers 11
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 114
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;

    move-result-object v0

    .line 115
    .local v0, builder:Ljavax/xml/transform/sax/TemplatesHandler;
    new-instance v5, Lorg/apache/xml/utils/TreeWalker;

    new-instance v6, Lorg/apache/xml/utils/DOM2Helper;

    invoke-direct {v6}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    invoke-interface {v0}, Ljavax/xml/transform/sax/TemplatesHandler;->getSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v0, v6, v7}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V

    .line 119
    .local v5, walker:Lorg/apache/xml/utils/TreeWalker;
    invoke-virtual {v5, p1}, Lorg/apache/xml/utils/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V

    .line 121
    invoke-interface {v0}, Ljavax/xml/transform/sax/TemplatesHandler;->getTemplates()Ljavax/xml/transform/Templates;
    :try_end_19
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_19} :catch_1b
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_19} :catch_44
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_47

    move-result-object v6

    .line 179
    .end local v0           #builder:Ljavax/xml/transform/sax/TemplatesHandler;
    .end local v5           #walker:Lorg/apache/xml/utils/TreeWalker;
    :goto_1a
    return-object v6

    .line 123
    :catch_1b
    move-exception v6

    move-object v3, v6

    .line 125
    .local v3, se:Lorg/xml/sax/SAXException;
    iget-object v6, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v6, :cond_38

    .line 129
    :try_start_21
    iget-object v6, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v7, Ljavax/xml/transform/TransformerException;

    invoke-direct {v7, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v6, v7}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_2b
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_21 .. :try_end_2b} :catch_2d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_21 .. :try_end_2b} :catch_30

    move-object v6, v8

    .line 140
    goto :goto_1a

    .line 131
    :catch_2d
    move-exception v6

    move-object v2, v6

    .line 133
    .local v2, ex:Ljavax/xml/transform/TransformerConfigurationException;
    throw v2

    .line 135
    .end local v2           #ex:Ljavax/xml/transform/TransformerConfigurationException;
    :catch_30
    move-exception v6

    move-object v2, v6

    .line 137
    .local v2, ex:Ljavax/xml/transform/TransformerException;
    new-instance v6, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v6, v2}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 148
    .end local v2           #ex:Ljavax/xml/transform/TransformerException;
    :cond_38
    new-instance v6, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v7, "ER_PROCESSFROMNODE_FAILED"

    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 152
    .end local v3           #se:Lorg/xml/sax/SAXException;
    :catch_44
    move-exception v6

    move-object v4, v6

    .line 155
    .local v4, tce:Ljavax/xml/transform/TransformerConfigurationException;
    throw v4

    .line 162
    .end local v4           #tce:Ljavax/xml/transform/TransformerConfigurationException;
    :catch_47
    move-exception v6

    move-object v1, v6

    .line 164
    .local v1, e:Ljava/lang/Exception;
    iget-object v6, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v6, :cond_64

    .line 168
    :try_start_4d
    iget-object v6, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v7, Ljavax/xml/transform/TransformerException;

    invoke-direct {v7, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v6, v7}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_57
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_4d .. :try_end_57} :catch_59
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4d .. :try_end_57} :catch_5c

    move-object v6, v8

    .line 179
    goto :goto_1a

    .line 170
    :catch_59
    move-exception v6

    move-object v2, v6

    .line 172
    .local v2, ex:Ljavax/xml/transform/TransformerConfigurationException;
    throw v2

    .line 174
    .end local v2           #ex:Ljavax/xml/transform/TransformerConfigurationException;
    :catch_5c
    move-exception v6

    move-object v2, v6

    .line 176
    .local v2, ex:Ljavax/xml/transform/TransformerException;
    new-instance v6, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v6, v2}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 186
    .end local v2           #ex:Ljavax/xml/transform/TransformerException;
    :cond_64
    new-instance v6, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v7, "ER_PROCESSFROMNODE_FAILED"

    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method processFromNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljavax/xml/transform/Templates;
    .registers 4
    .parameter "node"
    .parameter "systemID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 227
    iput-object p2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_DOMsystemID:Ljava/lang/String;

    .line 229
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->processFromNode(Lorg/w3c/dom/Node;)Ljavax/xml/transform/Templates;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 513
    const-string v0, "http://xml.apache.org/xalan/features/incremental"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 515
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    .line 518
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    .line 578
    :goto_17
    return-void

    .line 520
    .restart local p2
    :cond_18
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 523
    new-instance v0, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    goto :goto_17

    .line 528
    .restart local p2
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_BAD_VALUE"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_3c
    const-string v0, "http://xml.apache.org/xalan/features/optimize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 533
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_51

    .line 536
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    goto :goto_17

    .line 538
    .restart local p2
    :cond_51
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_63

    .line 541
    new-instance v0, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    goto :goto_17

    .line 546
    .restart local p2
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_BAD_VALUE"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_75
    const-string v0, "http://xml.apache.org/xalan/properties/source-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 557
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_8a

    .line 560
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    goto :goto_17

    .line 562
    .restart local p2
    :cond_8a
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_9d

    .line 565
    new-instance v0, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    goto/16 :goto_17

    .line 570
    .restart local p2
    :cond_9d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_BAD_VALUE"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_af
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_NOT_SUPPORTED"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .registers 5
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1027
    if-nez p1, :cond_f

    .line 1028
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_ERRORLISTENER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1031
    :cond_f
    iput-object p1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    .line 1032
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 7
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 404
    if-nez p1, :cond_f

    .line 405
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ER_SET_FEATURE_NULL_NAME"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_f
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 412
    iput-boolean p2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    .line 423
    return-void

    .line 418
    :cond_1a
    new-instance v0, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v1, "ER_UNSUPPORTED_FEATURE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .registers 2
    .parameter "resolver"

    .prologue
    .line 988
    iput-object p1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    .line 989
    return-void
.end method
