.class public Lorg/apache/xalan/transformer/TransformerIdentityImpl;
.super Ljavax/xml/transform/Transformer;
.source "TransformerIdentityImpl.java"

# interfaces
.implements Ljavax/xml/transform/sax/TransformerHandler;
.implements Lorg/xml/sax/ext/DeclHandler;


# instance fields
.field m_URIResolver:Ljavax/xml/transform/URIResolver;

.field private m_errorListener:Ljavax/xml/transform/ErrorListener;

.field m_flushedStartDoc:Z

.field m_foundFirstElement:Z

.field private m_isSecureProcessing:Z

.field private m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

.field private m_outputStream:Ljava/io/FileOutputStream;

.field private m_params:Ljava/util/Hashtable;

.field private m_result:Ljavax/xml/transform/Result;

.field private m_resultContentHandler:Lorg/xml/sax/ContentHandler;

.field private m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

.field private m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

.field private m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private m_serializer:Lorg/apache/xml/serializer/Serializer;

.field private m_systemID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;-><init>(Z)V

    .line 99
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4
    .parameter "isSecureProcessing"

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljavax/xml/transform/Transformer;-><init>()V

    .line 923
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    .line 1428
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 1461
    new-instance v0, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    .line 1480
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_isSecureProcessing:Z

    .line 88
    new-instance v0, Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "xml"

    invoke-direct {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 89
    iput-boolean p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_isSecureProcessing:Z

    .line 90
    return-void
.end method

.method private createResultContentHandler(Ljavax/xml/transform/Result;)V
    .registers 24
    .parameter "outputTarget"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 183
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/sax/SAXResult;

    move/from16 v17, v0

    if-eqz v17, :cond_92

    .line 185
    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/sax/SAXResult;

    move-object v13, v0

    .line 187
    .local v13, saxResult:Ljavax/xml/transform/sax/SAXResult;
    invoke-virtual {v13}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    .line 188
    invoke-virtual {v13}, Ljavax/xml/transform/sax/SAXResult;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/apache/xml/serializer/Serializer;

    move/from16 v17, v0

    if-eqz v17, :cond_3d

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lorg/apache/xml/serializer/Serializer;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    .line 307
    .end local v13           #saxResult:Ljavax/xml/transform/sax/SAXResult;
    :cond_3d
    :goto_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/xml/sax/DTDHandler;

    move/from16 v17, v0

    if-eqz v17, :cond_59

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 p1, v0

    check-cast p1, Lorg/xml/sax/DTDHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 310
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/xml/sax/ext/DeclHandler;

    move/from16 v17, v0

    if-eqz v17, :cond_75

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 p1, v0

    check-cast p1, Lorg/xml/sax/ext/DeclHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    .line 313
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v17, v0

    if-eqz v17, :cond_91

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 p1, v0

    check-cast p1, Lorg/xml/sax/ext/LexicalHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 315
    :cond_91
    return-void

    .line 197
    .restart local p1
    :cond_92
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/dom/DOMResult;

    move/from16 v17, v0

    if-eqz v17, :cond_135

    .line 199
    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/dom/DOMResult;

    move-object v7, v0

    .line 200
    .local v7, domResult:Ljavax/xml/transform/dom/DOMResult;
    invoke-virtual {v7}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v11

    .line 201
    .local v11, outputNode:Lorg/w3c/dom/Node;
    invoke-virtual {v7}, Ljavax/xml/transform/dom/DOMResult;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v10

    .line 205
    .local v10, nextSibling:Lorg/w3c/dom/Node;
    if-eqz v11, :cond_e7

    .line 207
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v16

    .line 208
    .local v16, type:S
    const/16 v17, 0x9

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_e0

    move-object v0, v11

    check-cast v0, Lorg/w3c/dom/Document;

    move-object v12, v0

    move-object v5, v12

    .line 243
    .end local p1
    .local v5, doc:Lorg/w3c/dom/Document;
    :goto_ba
    const/16 v17, 0xb

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_129

    new-instance v17, Lorg/apache/xml/utils/DOMBuilder;

    check-cast v11, Lorg/w3c/dom/DocumentFragment;

    .end local v11           #outputNode:Lorg/w3c/dom/Node;
    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/DocumentFragment;)V

    move-object/from16 v6, v17

    .line 248
    .local v6, domBuilder:Lorg/apache/xml/utils/DOMBuilder;
    :goto_cf
    if-eqz v10, :cond_d4

    .line 249
    invoke-virtual {v6, v10}, Lorg/apache/xml/utils/DOMBuilder;->setNextSibling(Lorg/w3c/dom/Node;)V

    .line 251
    :cond_d4
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    .line 252
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    goto/16 :goto_3d

    .line 208
    .end local v5           #doc:Lorg/w3c/dom/Document;
    .end local v6           #domBuilder:Lorg/apache/xml/utils/DOMBuilder;
    .restart local v11       #outputNode:Lorg/w3c/dom/Node;
    .restart local p1
    :cond_e0
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v17

    move-object/from16 v5, v17

    goto :goto_ba

    .line 215
    .end local v16           #type:S
    :cond_e7
    :try_start_e7
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 217
    .local v4, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/16 v17, 0x1

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 219
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_isSecureProcessing:Z

    move/from16 v17, v0
    :try_end_f9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e7 .. :try_end_f9} :catch_11d

    if-eqz v17, :cond_107

    .line 223
    :try_start_fb
    const-string v17, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/16 v18, 0x1

    move-object v0, v4

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_107
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_fb .. :try_end_107} :catch_240

    .line 228
    :cond_107
    :goto_107
    :try_start_107
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 230
    .local v3, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;
    :try_end_10e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_107 .. :try_end_10e} :catch_11d

    move-result-object v5

    .line 237
    .restart local v5       #doc:Lorg/w3c/dom/Document;
    move-object v11, v5

    .line 238
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v16

    .line 240
    .restart local v16       #type:S
    check-cast p1, Ljavax/xml/transform/dom/DOMResult;

    .end local p1
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    goto :goto_ba

    .line 232
    .end local v3           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #doc:Lorg/w3c/dom/Document;
    .end local v16           #type:S
    .restart local p1
    :catch_11d
    move-exception v17

    move-object/from16 v12, v17

    .line 234
    .local v12, pce:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v17, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 243
    .end local v12           #pce:Ljavax/xml/parsers/ParserConfigurationException;
    .end local p1
    .restart local v5       #doc:Lorg/w3c/dom/Document;
    .restart local v16       #type:S
    :cond_129
    new-instance v17, Lorg/apache/xml/utils/DOMBuilder;

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V

    move-object/from16 v6, v17

    goto :goto_cf

    .line 254
    .end local v5           #doc:Lorg/w3c/dom/Document;
    .end local v7           #domResult:Ljavax/xml/transform/dom/DOMResult;
    .end local v10           #nextSibling:Lorg/w3c/dom/Node;
    .end local v11           #outputNode:Lorg/w3c/dom/Node;
    .end local v16           #type:S
    .restart local p1
    :cond_135
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/stream/StreamResult;

    move/from16 v17, v0

    if-eqz v17, :cond_220

    .line 256
    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/stream/StreamResult;

    move-object v15, v0

    .line 260
    .local v15, sresult:Ljavax/xml/transform/stream/StreamResult;
    :try_start_142
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v14

    .line 263
    .local v14, serializer:Lorg/apache/xml/serializer/Serializer;
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    .line 265
    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v17

    if-eqz v17, :cond_17d

    .line 266
    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    .line 293
    :goto_165
    invoke-interface {v14}, Lorg/apache/xml/serializer/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_16f} :catch_171

    goto/16 :goto_3d

    .line 295
    .end local v14           #serializer:Lorg/apache/xml/serializer/Serializer;
    :catch_171
    move-exception v17

    move-object/from16 v9, v17

    .line 297
    .local v9, ioe:Ljava/io/IOException;
    new-instance v17, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 267
    .end local v9           #ioe:Ljava/io/IOException;
    .restart local v14       #serializer:Lorg/apache/xml/serializer/Serializer;
    :cond_17d
    :try_start_17d
    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    if-eqz v17, :cond_18e

    .line 268
    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    goto :goto_165

    .line 269
    :cond_18e
    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_212

    .line 271
    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v8

    .line 273
    .local v8, fileURL:Ljava/lang/String;
    const-string v17, "file:///"

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e2

    .line 274
    const/16 v17, 0x8

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_1d8

    .line 275
    const/16 v17, 0x8

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 287
    :cond_1bd
    :goto_1bd
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v17, v0

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    goto :goto_165

    .line 277
    :cond_1d8
    const/16 v17, 0x7

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1bd

    .line 279
    :cond_1e2
    const-string v17, "file:/"

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1bd

    .line 280
    const/16 v17, 0x6

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_208

    .line 281
    const/16 v17, 0x6

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1bd

    .line 283
    :cond_208
    const/16 v17, 0x5

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1bd

    .line 291
    .end local v8           #fileURL:Ljava/lang/String;
    :cond_212
    new-instance v17, Ljavax/xml/transform/TransformerException;

    const-string v18, "ER_NO_OUTPUT_SPECIFIED"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_220
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_220} :catch_171

    .line 302
    .end local v14           #serializer:Lorg/apache/xml/serializer/Serializer;
    .end local v15           #sresult:Ljavax/xml/transform/stream/StreamResult;
    :cond_220
    new-instance v17, Ljavax/xml/transform/TransformerException;

    const-string v18, "ER_CANNOT_TRANSFORM_TO_RESULT_TYPE"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 225
    .restart local v4       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7       #domResult:Ljavax/xml/transform/dom/DOMResult;
    .restart local v10       #nextSibling:Lorg/w3c/dom/Node;
    .restart local v11       #outputNode:Lorg/w3c/dom/Node;
    :catch_240
    move-exception v17

    goto/16 :goto_107
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "eName"
    .parameter "aName"
    .parameter "type"
    .parameter "valueDefault"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1376
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_e

    .line 1377
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    :cond_e
    return-void
.end method

.method public characters([CII)V
    .registers 5
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1125
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1126
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 1127
    return-void
.end method

.method public clearParameters()V
    .registers 2

    .prologue
    .line 587
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    if-nez v0, :cond_5

    .line 591
    :goto_4
    return-void

    .line 590
    :cond_5
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    goto :goto_4
.end method

.method public comment([CII)V
    .registers 5
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1322
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1323
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_c

    .line 1324
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 1325
    :cond_c
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "model"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1345
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_9

    .line 1346
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    :cond_9
    return-void
.end method

.method public endCDATA()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1304
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_9

    .line 1305
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    .line 1306
    :cond_9
    return-void
.end method

.method public endDTD()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1235
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_9

    .line 1236
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    .line 1237
    :cond_9
    return-void
.end method

.method public endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 962
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 963
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 964
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1102
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1276
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_9

    .line 1277
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    .line 1278
    :cond_9
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 3
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1004
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1005
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 1006
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1421
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_9

    .line 1422
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    :cond_9
    return-void
.end method

.method protected final flushStartDoc()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 928
    iget-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    if-nez v1, :cond_15

    .line 930
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v1, :cond_d

    .line 934
    :try_start_8
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    invoke-direct {p0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V
    :try_end_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_d} :catch_16

    .line 941
    :cond_d
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 942
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    .line 944
    :cond_15
    return-void

    .line 936
    :catch_16
    move-exception v1

    move-object v0, v1

    .line 938
    .local v0, te:Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .registers 2

    .prologue
    .line 802
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-object v0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 706
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Properties;

    return-object p0
.end method

.method public getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 765
    const/4 v1, 0x0

    .line 766
    .local v1, value:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 768
    .local v0, props:Lorg/apache/xalan/templates/OutputProperties;
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 770
    if-nez v1, :cond_21

    .line 772
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 773
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 777
    :cond_21
    return-object v1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "name"

    .prologue
    .line 575
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    if-nez v0, :cond_6

    .line 576
    const/4 v0, 0x0

    .line 578
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    return-object v0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .registers 1

    .prologue
    .line 144
    return-object p0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .registers 2

    .prologue
    .line 617
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_URIResolver:Ljavax/xml/transform/URIResolver;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .registers 5
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1150
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    .line 1151
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1397
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_9

    .line 1398
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    :cond_9
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 829
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_9

    .line 830
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    :cond_9
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1173
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1174
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 152
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    .line 153
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    .line 154
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 155
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->clearParameters()V

    .line 156
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    .line 157
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    .line 158
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    .line 159
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 160
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 161
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    .line 162
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    .line 163
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_URIResolver:Ljavax/xml/transform/URIResolver;

    .line 164
    new-instance v0, Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "xml"

    invoke-direct {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 165
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 4
    .parameter "locator"

    .prologue
    .line 880
    :try_start_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v1, :cond_9

    .line 881
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    invoke-direct {p0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V
    :try_end_9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_9} :catch_f

    .line 888
    :cond_9
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 889
    return-void

    .line 883
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 885
    .local v0, te:Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
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
    .line 789
    if-nez p1, :cond_f

    .line 790
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_NULL_ERROR_HANDLER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_f
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    .line 793
    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .registers 4
    .parameter "oformat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 653
    if-eqz p1, :cond_21

    .line 657
    const-string v1, "method"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 659
    .local v0, method:Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 660
    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {v1, v0}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 664
    :goto_13
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    .line 671
    .end local v0           #method:Ljava/lang/String;
    :goto_18
    return-void

    .line 662
    .restart local v0       #method:Ljava/lang/String;
    :cond_19
    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {v1}, Lorg/apache/xalan/templates/OutputProperties;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    goto :goto_13

    .line 669
    .end local v0           #method:Ljava/lang/String;
    :cond_21
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    goto :goto_18
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 739
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 740
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_18
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter "name"
    .parameter "value"

    .prologue
    .line 548
    if-nez p2, :cond_14

    .line 549
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_INVALID_SET_PARAM_VALUE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_14
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    if-nez v0, :cond_1f

    .line 554
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    .line 557
    :cond_1f
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    return-void
.end method

.method public setResult(Ljavax/xml/transform/Result;)V
    .registers 5
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 111
    if-nez p1, :cond_f

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_RESULT_NULL"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_f
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    .line 114
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .registers 2
    .parameter "systemID"

    .prologue
    .line 123
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .registers 2
    .parameter "resolver"

    .prologue
    .line 605
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_URIResolver:Ljavax/xml/transform/URIResolver;

    .line 606
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1194
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1195
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 1196
    return-void
.end method

.method public startCDATA()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1292
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_9

    .line 1293
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 1294
    :cond_9
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1222
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1223
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_c

    .line 1224
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    :cond_c
    return-void
.end method

.method public startDocument()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 910
    :try_start_1
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v1, :cond_a

    .line 911
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    invoke-direct {p0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V
    :try_end_a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_a} :catch_f

    .line 919
    :cond_a
    iput-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    .line 920
    iput-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    .line 921
    return-void

    .line 913
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 915
    .local v0, te:Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 10
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1036
    iget-boolean v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    if-nez v3, :cond_3b

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    if-eqz v3, :cond_3b

    .line 1038
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    .line 1044
    :try_start_b
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    invoke-static {p1, p2, v3, v4}, Lorg/apache/xalan/transformer/SerializerSwitcher;->switchSerializerIfHTML(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Lorg/apache/xml/serializer/Serializer;)Lorg/apache/xml/serializer/Serializer;
    :try_end_16
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b .. :try_end_16} :catch_44

    move-result-object v1

    .line 1052
    .local v1, newSerializer:Lorg/apache/xml/serializer/Serializer;
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    if-eq v1, v3, :cond_3b

    .line 1056
    :try_start_1b
    invoke-interface {v1}, Lorg/apache/xml/serializer/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_21} :catch_4c

    .line 1063
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v3, v3, Lorg/xml/sax/DTDHandler;

    if-eqz v3, :cond_2d

    .line 1064
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v3, Lorg/xml/sax/DTDHandler;

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 1066
    :cond_2d
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v3, v3, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v3, :cond_39

    .line 1067
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v3, Lorg/xml/sax/ext/LexicalHandler;

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 1069
    :cond_39
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    .line 1072
    .end local v1           #newSerializer:Lorg/apache/xml/serializer/Serializer;
    :cond_3b
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1073
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v3, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 1074
    return-void

    .line 1047
    :catch_44
    move-exception v3

    move-object v2, v3

    .line 1049
    .local v2, te:Ljavax/xml/transform/TransformerException;
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 1058
    .end local v2           #te:Ljavax/xml/transform/TransformerException;
    .restart local v1       #newSerializer:Lorg/apache/xml/serializer/Serializer;
    :catch_4c
    move-exception v3

    move-object v0, v3

    .line 1060
    .local v0, ioe:Ljava/io/IOException;
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public startEntity(Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1263
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_9

    .line 1264
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    .line 1265
    :cond_9
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 984
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 985
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .registers 31
    .parameter "source"
    .parameter "outputTarget"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 330
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V

    .line 340
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/stream/StreamSource;

    move/from16 v23, v0

    if-eqz v23, :cond_2d

    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_2d

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/stream/StreamSource;

    move-object/from16 p2, v0

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    if-nez v23, :cond_2d

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/stream/StreamSource;

    move-object/from16 p2, v0

    invoke-virtual/range {p2 .. p2}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v23

    if-eqz v23, :cond_61

    :cond_2d
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/sax/SAXSource;

    move/from16 v23, v0

    if-eqz v23, :cond_4d

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    move-object/from16 p2, v0

    invoke-virtual/range {p2 .. p2}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v23

    if-nez v23, :cond_4d

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    move-object/from16 p2, v0

    invoke-virtual/range {p2 .. p2}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v23

    if-eqz v23, :cond_61

    :cond_4d
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    move/from16 v23, v0

    if-eqz v23, :cond_81

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 p2, v0

    invoke-virtual/range {p2 .. p2}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v23

    if-nez v23, :cond_81

    .line 348
    :cond_61
    :try_start_61
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 349
    .local v5, builderF:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 350
    .local v4, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v18

    .line 351
    .local v18, systemID:Ljava/lang/String;
    new-instance v17, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_7a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_61 .. :try_end_7a} :catch_fa

    .line 354
    .end local p1
    .local v17, source:Ljavax/xml/transform/Source;
    if-eqz v18, :cond_7f

    .line 355
    :try_start_7c
    invoke-interface/range {v17 .. v18}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V
    :try_end_7f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7c .. :try_end_7f} :catch_2ad

    :cond_7f
    move-object/from16 p1, v17

    .line 364
    .end local v4           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v5           #builderF:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v17           #source:Ljavax/xml/transform/Source;
    .end local v18           #systemID:Ljava/lang/String;
    .restart local p1
    :cond_81
    :try_start_81
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    move/from16 v23, v0

    if-eqz v23, :cond_169

    .line 366
    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    move-object v9, v0

    .line 368
    .local v9, dsource:Ljavax/xml/transform/dom/DOMSource;
    invoke-virtual {v9}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    .line 370
    invoke-virtual {v9}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;
    :try_end_9b
    .catchall {:try_start_81 .. :try_end_9b} :catchall_13d

    move-result-object v7

    .line 372
    .local v7, dNode:Lorg/w3c/dom/Node;
    if-eqz v7, :cond_158

    .line 376
    :try_start_9e
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_ad

    .line 377
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->startDocument()V
    :try_end_ad
    .catchall {:try_start_9e .. :try_end_ad} :catchall_13d
    .catch Lorg/xml/sax/SAXException; {:try_start_9e .. :try_end_ad} :catch_130

    .line 380
    :cond_ad
    :try_start_ad
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_107

    .line 382
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 383
    .local v8, data:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 384
    .local v6, chars:[C
    const/16 v23, 0x0

    move-object v0, v6

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->characters([CII)V
    :try_end_d1
    .catchall {:try_start_ad .. :try_end_d1} :catchall_11f

    .line 395
    .end local v6           #chars:[C
    .end local v8           #data:Ljava/lang/String;
    :goto_d1
    :try_start_d1
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e0

    .line 396
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->endDocument()V
    :try_end_e0
    .catchall {:try_start_d1 .. :try_end_e0} :catchall_13d
    .catch Lorg/xml/sax/SAXException; {:try_start_d1 .. :try_end_e0} :catch_130

    .line 515
    :cond_e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f9

    .line 519
    :try_start_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_f1} :catch_2aa

    .line 522
    :goto_f1
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 525
    .end local v7           #dNode:Lorg/w3c/dom/Node;
    .end local v9           #dsource:Ljavax/xml/transform/dom/DOMSource;
    .end local p1
    :cond_f9
    :goto_f9
    return-void

    .line 357
    .restart local p1
    :catch_fa
    move-exception v23

    move-object/from16 v10, v23

    .line 358
    .local v10, e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_fd
    new-instance v23, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v10}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 389
    .end local v10           #e:Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v7       #dNode:Lorg/w3c/dom/Node;
    .restart local v9       #dsource:Ljavax/xml/transform/dom/DOMSource;
    :cond_107
    :try_start_107
    new-instance v20, Lorg/apache/xml/serializer/TreeWalker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/serializer/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    .line 390
    .local v20, walker:Lorg/apache/xml/serializer/TreeWalker;
    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_11e
    .catchall {:try_start_107 .. :try_end_11e} :catchall_11f

    goto :goto_d1

    .line 395
    .end local v20           #walker:Lorg/apache/xml/serializer/TreeWalker;
    :catchall_11f
    move-exception v23

    :try_start_120
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_12f

    .line 396
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->endDocument()V

    :cond_12f
    throw v23
    :try_end_130
    .catchall {:try_start_120 .. :try_end_130} :catchall_13d
    .catch Lorg/xml/sax/SAXException; {:try_start_120 .. :try_end_130} :catch_130

    .line 399
    :catch_130
    move-exception v23

    move-object/from16 v16, v23

    .line 401
    .local v16, se:Lorg/xml/sax/SAXException;
    :try_start_133
    new-instance v23, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v23
    :try_end_13d
    .catchall {:try_start_133 .. :try_end_13d} :catchall_13d

    .line 515
    .end local v7           #dNode:Lorg/w3c/dom/Node;
    .end local v9           #dsource:Ljavax/xml/transform/dom/DOMSource;
    .end local v16           #se:Lorg/xml/sax/SAXException;
    .end local p1
    :catchall_13d
    move-exception v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v24, v0

    if-eqz v24, :cond_157

    .line 519
    :try_start_146
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_14f} :catch_29f

    .line 522
    :goto_14f
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    :cond_157
    throw v23

    .line 408
    .restart local v7       #dNode:Lorg/w3c/dom/Node;
    .restart local v9       #dsource:Ljavax/xml/transform/dom/DOMSource;
    .restart local p1
    :cond_158
    :try_start_158
    const-string v23, "ER_ILLEGAL_DOMSOURCE_INPUT"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 411
    .local v14, messageStr:Ljava/lang/String;
    new-instance v23, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v23

    move-object v1, v14

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 415
    .end local v7           #dNode:Lorg/w3c/dom/Node;
    .end local v9           #dsource:Ljavax/xml/transform/dom/DOMSource;
    .end local v14           #messageStr:Ljava/lang/String;
    :cond_169
    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v22

    .line 417
    .local v22, xmlSource:Lorg/xml/sax/InputSource;
    if-nez v22, :cond_18f

    .line 419
    new-instance v23, Ljavax/xml/transform/TransformerException;

    const-string v24, "ER_CANNOT_TRANSFORM_SOURCE_TYPE"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 423
    :cond_18f
    invoke-virtual/range {v22 .. v22}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_19f

    .line 424
    invoke-virtual/range {v22 .. v22}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;
    :try_end_19f
    .catchall {:try_start_158 .. :try_end_19f} :catchall_13d

    .line 426
    :cond_19f
    const/4 v15, 0x0

    .line 427
    .local v15, reader:Lorg/xml/sax/XMLReader;
    const/4 v13, 0x0

    .line 431
    .local v13, managedReader:Z
    :try_start_1a1
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/sax/SAXSource;

    move/from16 v23, v0

    if-eqz v23, :cond_1af

    .line 432
    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_1ae
    .catchall {:try_start_1a1 .. :try_end_1ae} :catchall_278
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_1a1 .. :try_end_1ae} :catch_247
    .catch Lorg/xml/sax/SAXException; {:try_start_1a1 .. :try_end_1ae} :catch_286
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1ae} :catch_293

    move-result-object v15

    .line 435
    :cond_1af
    if-nez v15, :cond_25d

    .line 437
    :try_start_1b1
    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/apache/xml/utils/XMLReaderManager;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_1b8
    .catchall {:try_start_1b1 .. :try_end_1b8} :catchall_278
    .catch Lorg/xml/sax/SAXException; {:try_start_1b1 .. :try_end_1b8} :catch_23a
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_1b1 .. :try_end_1b8} :catch_247
    .catch Ljava/io/IOException; {:try_start_1b1 .. :try_end_1b8} :catch_293

    move-result-object v15

    .line 438
    const/4 v13, 0x1

    .line 453
    :goto_1ba
    move-object/from16 v11, p0

    .line 455
    .local v11, inputHandler:Lorg/xml/sax/ContentHandler;
    :try_start_1bc
    invoke-interface {v15, v11}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 457
    move-object v0, v11

    instance-of v0, v0, Lorg/xml/sax/DTDHandler;

    move/from16 v23, v0

    if-eqz v23, :cond_1cd

    .line 458
    move-object v0, v11

    check-cast v0, Lorg/xml/sax/DTDHandler;

    move-object v12, v0

    invoke-interface {v15, v12}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    :try_end_1cd
    .catchall {:try_start_1bc .. :try_end_1cd} :catchall_278
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_1bc .. :try_end_1cd} :catch_247
    .catch Lorg/xml/sax/SAXException; {:try_start_1bc .. :try_end_1cd} :catch_286
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1cd} :catch_293

    .line 462
    :cond_1cd
    :try_start_1cd
    move-object v0, v11

    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v23, v0

    if-eqz v23, :cond_1dd

    .line 463
    const-string v23, "http://xml.org/sax/properties/lexical-handler"

    move-object v0, v15

    move-object/from16 v1, v23

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 466
    :cond_1dd
    move-object v0, v11

    instance-of v0, v0, Lorg/xml/sax/ext/DeclHandler;

    move/from16 v23, v0

    if-eqz v23, :cond_1ed

    .line 467
    const-string v23, "http://xml.org/sax/properties/declaration-handler"

    move-object v0, v15

    move-object/from16 v1, v23

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1ed
    .catchall {:try_start_1cd .. :try_end_1ed} :catchall_278
    .catch Lorg/xml/sax/SAXException; {:try_start_1cd .. :try_end_1ed} :catch_2a7
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_1cd .. :try_end_1ed} :catch_247
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1ed} :catch_293

    .line 475
    :cond_1ed
    :goto_1ed
    :try_start_1ed
    move-object v0, v11

    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v23, v0

    if-eqz v23, :cond_1fd

    .line 476
    const-string v23, "http://xml.org/sax/handlers/LexicalHandler"

    move-object v0, v15

    move-object/from16 v1, v23

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 479
    :cond_1fd
    move-object v0, v11

    instance-of v0, v0, Lorg/xml/sax/ext/DeclHandler;

    move/from16 v23, v0

    if-eqz v23, :cond_20d

    .line 480
    const-string v23, "http://xml.org/sax/handlers/DeclHandler"

    move-object v0, v15

    move-object/from16 v1, v23

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_20d
    .catchall {:try_start_1ed .. :try_end_20d} :catchall_278
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_1ed .. :try_end_20d} :catch_2a4
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_1ed .. :try_end_20d} :catch_247
    .catch Lorg/xml/sax/SAXException; {:try_start_1ed .. :try_end_20d} :catch_286
    .catch Ljava/io/IOException; {:try_start_1ed .. :try_end_20d} :catch_293

    .line 485
    :cond_20d
    :goto_20d
    :try_start_20d
    move-object v0, v15

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_213
    .catchall {:try_start_20d .. :try_end_213} :catchall_278
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_20d .. :try_end_213} :catch_247
    .catch Lorg/xml/sax/SAXException; {:try_start_20d .. :try_end_213} :catch_286
    .catch Ljava/io/IOException; {:try_start_20d .. :try_end_213} :catch_293

    .line 508
    if-eqz v13, :cond_21f

    .line 509
    :try_start_215
    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_21f
    .catchall {:try_start_215 .. :try_end_21f} :catchall_13d

    .line 515
    :cond_21f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f9

    .line 519
    :try_start_227
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_230
    .catch Ljava/io/IOException; {:try_start_227 .. :try_end_230} :catch_2a2

    .line 522
    :goto_230
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    goto/16 :goto_f9

    .line 439
    .end local v11           #inputHandler:Lorg/xml/sax/ContentHandler;
    :catch_23a
    move-exception v23

    move-object/from16 v16, v23

    .line 440
    .restart local v16       #se:Lorg/xml/sax/SAXException;
    :try_start_23d
    new-instance v23, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v23
    :try_end_247
    .catchall {:try_start_23d .. :try_end_247} :catchall_278
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_23d .. :try_end_247} :catch_247
    .catch Lorg/xml/sax/SAXException; {:try_start_23d .. :try_end_247} :catch_286
    .catch Ljava/io/IOException; {:try_start_23d .. :try_end_247} :catch_293

    .line 487
    .end local v16           #se:Lorg/xml/sax/SAXException;
    :catch_247
    move-exception v23

    move-object/from16 v21, v23

    .line 489
    .local v21, wre:Lorg/apache/xml/utils/WrappedRuntimeException;
    :try_start_24a
    invoke-virtual/range {v21 .. v21}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v19

    .line 492
    .local v19, throwable:Ljava/lang/Throwable;
    :goto_24e
    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    move/from16 v23, v0

    if-eqz v23, :cond_26e

    .line 494
    check-cast v19, Lorg/apache/xml/utils/WrappedRuntimeException;

    .end local v19           #throwable:Ljava/lang/Throwable;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;
    :try_end_25b
    .catchall {:try_start_24a .. :try_end_25b} :catchall_278

    move-result-object v19

    .restart local v19       #throwable:Ljava/lang/Throwable;
    goto :goto_24e

    .line 444
    .end local v19           #throwable:Ljava/lang/Throwable;
    .end local v21           #wre:Lorg/apache/xml/utils/WrappedRuntimeException;
    :cond_25d
    :try_start_25d
    const-string v23, "http://xml.org/sax/features/namespace-prefixes"

    const/16 v24, 0x1

    move-object v0, v15

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_269
    .catchall {:try_start_25d .. :try_end_269} :catchall_278
    .catch Lorg/xml/sax/SAXException; {:try_start_25d .. :try_end_269} :catch_26b
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_25d .. :try_end_269} :catch_247
    .catch Ljava/io/IOException; {:try_start_25d .. :try_end_269} :catch_293

    goto/16 :goto_1ba

    .line 446
    :catch_26b
    move-exception v23

    goto/16 :goto_1ba

    .line 498
    .restart local v19       #throwable:Ljava/lang/Throwable;
    .restart local v21       #wre:Lorg/apache/xml/utils/WrappedRuntimeException;
    :cond_26e
    :try_start_26e
    new-instance v23, Ljavax/xml/transform/TransformerException;

    invoke-virtual/range {v21 .. v21}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v23
    :try_end_278
    .catchall {:try_start_26e .. :try_end_278} :catchall_278

    .line 508
    .end local v19           #throwable:Ljava/lang/Throwable;
    .end local v21           #wre:Lorg/apache/xml/utils/WrappedRuntimeException;
    :catchall_278
    move-exception v23

    if-eqz v13, :cond_285

    .line 509
    :try_start_27b
    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    :cond_285
    throw v23
    :try_end_286
    .catchall {:try_start_27b .. :try_end_286} :catchall_13d

    .line 500
    :catch_286
    move-exception v23

    move-object/from16 v16, v23

    .line 502
    .restart local v16       #se:Lorg/xml/sax/SAXException;
    :try_start_289
    new-instance v23, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 504
    .end local v16           #se:Lorg/xml/sax/SAXException;
    :catch_293
    move-exception v23

    move-object/from16 v12, v23

    .line 506
    .local v12, ioe:Ljava/io/IOException;
    new-instance v23, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v23
    :try_end_29f
    .catchall {:try_start_289 .. :try_end_29f} :catchall_278

    .line 521
    .end local v12           #ioe:Ljava/io/IOException;
    .end local v13           #managedReader:Z
    .end local v15           #reader:Lorg/xml/sax/XMLReader;
    .end local v22           #xmlSource:Lorg/xml/sax/InputSource;
    :catch_29f
    move-exception v24

    goto/16 :goto_14f

    .restart local v11       #inputHandler:Lorg/xml/sax/ContentHandler;
    .restart local v13       #managedReader:Z
    .restart local v15       #reader:Lorg/xml/sax/XMLReader;
    .restart local v22       #xmlSource:Lorg/xml/sax/InputSource;
    :catch_2a2
    move-exception v23

    goto :goto_230

    .line 483
    :catch_2a4
    move-exception v23

    goto/16 :goto_20d

    .line 471
    :catch_2a7
    move-exception v23

    goto/16 :goto_1ed

    .line 521
    .end local v11           #inputHandler:Lorg/xml/sax/ContentHandler;
    .end local v13           #managedReader:Z
    .end local v15           #reader:Lorg/xml/sax/XMLReader;
    .end local v22           #xmlSource:Lorg/xml/sax/InputSource;
    .restart local v7       #dNode:Lorg/w3c/dom/Node;
    .restart local v9       #dsource:Ljavax/xml/transform/dom/DOMSource;
    .restart local p1
    :catch_2aa
    move-exception v23

    goto/16 :goto_f1

    .line 357
    .end local v7           #dNode:Lorg/w3c/dom/Node;
    .end local v9           #dsource:Ljavax/xml/transform/dom/DOMSource;
    .end local p1
    .restart local v4       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5       #builderF:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v17       #source:Ljavax/xml/transform/Source;
    .restart local v18       #systemID:Ljava/lang/String;
    :catch_2ad
    move-exception v23

    move-object/from16 v10, v23

    move-object/from16 p1, v17

    .end local v17           #source:Ljavax/xml/transform/Source;
    .restart local p1
    goto/16 :goto_fd
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .parameter "notationName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 856
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_9

    .line 857
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    :cond_9
    return-void
.end method
