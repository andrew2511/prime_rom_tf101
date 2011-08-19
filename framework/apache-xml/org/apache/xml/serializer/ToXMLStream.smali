.class public Lorg/apache/xml/serializer/ToXMLStream;
.super Lorg/apache/xml/serializer/ToStream;
.source "ToXMLStream.java"


# instance fields
.field private m_xmlcharInfo:Lorg/apache/xml/serializer/CharInfo;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;-><init>()V

    .line 50
    sget-object v0, Lorg/apache/xml/serializer/CharInfo;->XML_ENTITIES_RESOURCE:Ljava/lang/String;

    const-string v1, "xml"

    invoke-static {v0, v1}, Lorg/apache/xml/serializer/CharInfo;->getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/CharInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_xmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    .line 58
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_xmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    iput-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    .line 60
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->initCDATA()V

    .line 62
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    .line 64
    return-void
.end method

.method private getXMLVersion()Ljava/lang/String;
    .registers 9

    .prologue
    .line 617
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getVersion()Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, xmlVersion:Ljava/lang/String;
    if-eqz v3, :cond_e

    const-string v4, "1.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 620
    :cond_e
    const-string v3, "1.0"

    .line 644
    :goto_10
    return-object v3

    .line 622
    :cond_11
    const-string v4, "1.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 624
    const-string v3, "1.1"

    goto :goto_10

    .line 628
    :cond_1c
    sget-object v4, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v5, "ER_XML_VERSION_NOT_SUPPORTED"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, msg:Ljava/lang/String;
    :try_start_2a
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 634
    .local v2, tran:Ljavax/xml/transform/Transformer;
    invoke-virtual {v2}, Ljavax/xml/transform/Transformer;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 636
    .local v0, errHandler:Ljavax/xml/transform/ErrorListener;
    if-eqz v0, :cond_45

    iget-object v4, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    if-eqz v4, :cond_45

    .line 637
    new-instance v4, Ljavax/xml/transform/TransformerException;

    iget-object v5, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v4, v1, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v4}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_42} :catch_4b

    .line 642
    .end local v0           #errHandler:Ljavax/xml/transform/ErrorListener;
    .end local v2           #tran:Ljavax/xml/transform/Transformer;
    :goto_42
    const-string v3, "1.0"

    goto :goto_10

    .line 639
    .restart local v0       #errHandler:Ljavax/xml/transform/ErrorListener;
    .restart local v2       #tran:Ljavax/xml/transform/Transformer;
    :cond_45
    :try_start_45
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4a} :catch_4b

    goto :goto_42

    .line 641
    .end local v0           #errHandler:Ljavax/xml/transform/ErrorListener;
    .end local v2           #tran:Ljavax/xml/transform/Transformer;
    :catch_4b
    move-exception v4

    goto :goto_42
.end method

.method private resetToXMLStream()V
    .registers 1

    .prologue
    .line 603
    return-void
.end method


# virtual methods
.method public CopyFrom(Lorg/apache/xml/serializer/ToXMLStream;)V
    .registers 4
    .parameter "xmlListener"

    .prologue
    .line 74
    iget-object v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setWriter(Ljava/io/Writer;)V

    .line 78
    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, encoding:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToXMLStream;->setEncoding(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getOmitXMLDeclaration()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setOmitXMLDeclaration(Z)V

    .line 83
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_ispreserve:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_ispreserve:Z

    .line 84
    iget-object v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    iput-object v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    .line 85
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_isprevtext:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_isprevtext:Z

    .line 86
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_doIndent:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_doIndent:Z

    .line 87
    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getIndentAmount()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setIndentAmount(I)V

    .line 88
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_startNewLine:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_startNewLine:Z

    .line 89
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_needToOutputDocTypeDecl:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_needToOutputDocTypeDecl:Z

    .line 90
    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setDoctypeSystem(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getDoctypePublic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setDoctypePublic(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getStandalone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setStandalone(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getMediaType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setMediaType(Ljava/lang/String;)V

    .line 94
    iget-object v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    iput-object v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    .line 95
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_spaceBeforeClose:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_spaceBeforeClose:Z

    .line 96
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_cdataStartCalled:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_cdataStartCalled:Z

    .line 98
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 18
    .parameter "uri"
    .parameter "localName"
    .parameter "rawName"
    .parameter "type"
    .parameter "value"
    .parameter "xslAttribute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v7, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v7, v7, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v7, :cond_3f

    .line 441
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xml/serializer/ToXMLStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 451
    .local v6, was_added:Z
    if-eqz v6, :cond_3b

    if-nez p6, :cond_3b

    const-string v7, "xmlns"

    invoke-virtual {p3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 453
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToXMLStream;->ensureAttributesNamespaceIsDeclared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, prefixUsed:Ljava/lang/String;
    if-eqz v3, :cond_3b

    if-eqz p3, :cond_3b

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 464
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 468
    .end local v3           #prefixUsed:Ljava/lang/String;
    :cond_3b
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xml/serializer/ToXMLStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 511
    .end local v6           #was_added:Z
    :goto_3e
    return-void

    .line 486
    :cond_3f
    sget-object v7, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v8, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-virtual {v7, v8, v9}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, msg:Ljava/lang/String;
    :try_start_4d
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    .line 492
    .local v5, tran:Ljavax/xml/transform/Transformer;
    invoke-virtual {v5}, Ljavax/xml/transform/Transformer;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    .line 496
    .local v1, errHandler:Ljavax/xml/transform/ErrorListener;
    if-eqz v1, :cond_6e

    iget-object v7, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    if-eqz v7, :cond_6e

    .line 497
    new-instance v7, Ljavax/xml/transform/TransformerException;

    iget-object v8, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v7, v2, v8}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v1, v7}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_65
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4d .. :try_end_65} :catch_66

    goto :goto_3e

    .line 501
    .end local v1           #errHandler:Ljavax/xml/transform/ErrorListener;
    .end local v5           #tran:Ljavax/xml/transform/Transformer;
    :catch_66
    move-exception v7

    move-object v0, v7

    .line 507
    .local v0, e:Ljavax/xml/transform/TransformerException;
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    .line 508
    .local v4, se:Lorg/xml/sax/SAXException;
    throw v4

    .line 499
    .end local v0           #e:Ljavax/xml/transform/TransformerException;
    .end local v4           #se:Lorg/xml/sax/SAXException;
    .restart local v1       #errHandler:Ljavax/xml/transform/ErrorListener;
    .restart local v5       #tran:Ljavax/xml/transform/Transformer;
    :cond_6e
    :try_start_6e
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_73
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6e .. :try_end_73} :catch_66

    goto :goto_3e
.end method

.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "name"
    .parameter "value"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 384
    iget-object v3, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v3, :cond_2b

    .line 389
    :try_start_6
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/ToXMLStream;->patchName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, patchedName:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_writer:Ljava/io/Writer;

    .line 391
    .local v2, writer:Ljava/io/Writer;
    and-int/lit8 v3, p3, 0x1

    if-lez v3, :cond_2c

    iget-object v3, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_xmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    iget-boolean v3, v3, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    if-eqz v3, :cond_2c

    .line 399
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 400
    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 401
    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 403
    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 417
    .end local v1           #patchedName:Ljava/lang/String;
    .end local v2           #writer:Ljava/io/Writer;
    :cond_2b
    :goto_2b
    return-void

    .line 407
    .restart local v1       #patchedName:Ljava/lang/String;
    .restart local v2       #writer:Ljava/io/Writer;
    :cond_2c
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 408
    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 409
    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, p2, v3}, Lorg/apache/xml/serializer/ToXMLStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_45} :catch_46

    goto :goto_2b

    .line 413
    .end local v1           #patchedName:Ljava/lang/String;
    .end local v2           #writer:Ljava/io/Writer;
    :catch_46
    move-exception v3

    move-object v0, v3

    .line 414
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->flushPending()V

    .line 187
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_doIndent:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_isprevtext:Z

    if-nez v1, :cond_e

    .line 191
    :try_start_b
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->outputLineSep()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_19

    .line 199
    :cond_e
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->flushWriter()V

    .line 201
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v1, :cond_18

    .line 202
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->fireEndDoc()V

    .line 203
    :cond_18
    return-void

    .line 193
    :catch_19
    move-exception v0

    .line 195
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElement(Ljava/lang/String;)V
    .registers 3
    .parameter "elemName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 518
    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/xml/serializer/ToXMLStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public endPreserving()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_ispreserve:Z

    .line 238
    return-void

    .line 237
    :cond_c
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->pop()Z

    move-result v0

    goto :goto_9
.end method

.method public entityReference(Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v2, :cond_e

    .line 348
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->closeStartTag()V

    .line 349
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 354
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->shouldIndent()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 355
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->indent()V

    .line 357
    :cond_17
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_writer:Ljava/io/Writer;

    .line 358
    .local v1, writer:Ljava/io/Writer;
    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 359
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 360
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_26} :catch_2e

    .line 367
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v2, :cond_2d

    .line 368
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/ToStream;->fireEntityReference(Ljava/lang/String;)V

    .line 369
    :cond_2d
    return-void

    .line 362
    .end local v1           #writer:Ljava/io/Writer;
    :catch_2e
    move-exception v2

    move-object v0, v2

    .line 364
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 535
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    if-nez v1, :cond_1c

    .line 537
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/xml/serializer/ToXMLStream;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, prefix1:Ljava/lang/String;
    if-nez v0, :cond_1c

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 544
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-object p2, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    .line 547
    .end local v0           #prefix1:Ljava/lang/String;
    :cond_1c
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/xml/serializer/ToXMLStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 548
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 254
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_inEntityRef:Z

    if-eqz v3, :cond_5

    .line 335
    :cond_4
    :goto_4
    return-void

    .line 257
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->flushPending()V

    .line 259
    const-string v3, "javax.xml.transform.disable-output-escaping"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 261
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->startNonEscaping()V

    .line 333
    :goto_13
    iget-object v3, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v3, :cond_4

    .line 334
    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/ToStream;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 263
    :cond_1b
    const-string v3, "javax.xml.transform.enable-output-escaping"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 265
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->endNonEscaping()V

    goto :goto_13

    .line 271
    :cond_27
    :try_start_27
    iget-object v3, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v3, :cond_9c

    .line 273
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->closeStartTag()V

    .line 274
    iget-object v3, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 279
    :cond_35
    :goto_35
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->shouldIndent()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 280
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->indent()V

    .line 282
    :cond_3e
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_writer:Ljava/io/Writer;

    .line 283
    .local v2, writer:Ljava/io/Writer;
    const-string v3, "<?"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5e

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 288
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 290
    :cond_5e
    const-string v3, "?>"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 292
    .local v1, indexOfQLT:I
    if-ltz v1, :cond_a4

    .line 296
    if-lez v1, :cond_70

    .line 298
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 301
    :cond_70
    const-string v3, "? >"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 303
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_86

    .line 305
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 313
    :cond_86
    :goto_86
    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 314
    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 325
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_startNewLine:Z
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_93} :catch_94

    goto :goto_13

    .line 327
    .end local v1           #indexOfQLT:I
    .end local v2           #writer:Ljava/io/Writer;
    :catch_94
    move-exception v3

    move-object v0, v3

    .line 329
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 276
    .end local v0           #e:Ljava/io/IOException;
    :cond_9c
    :try_start_9c
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_needToCallStartDocument:Z

    if-eqz v3, :cond_35

    .line 277
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->startDocumentInternal()V

    goto :goto_35

    .line 310
    .restart local v1       #indexOfQLT:I
    .restart local v2       #writer:Ljava/io/Writer;
    :cond_a4
    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a7} :catch_94

    goto :goto_86
.end method

.method protected pushNamespace(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 561
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xml/serializer/NamespaceMappings;->pushNamespace(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 564
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/serializer/ToXMLStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_f} :catch_11

    .line 565
    const/4 v0, 0x1

    .line 572
    :goto_10
    return v0

    .line 568
    :catch_11
    move-exception v0

    .line 572
    :cond_12
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public reset()Z
    .registers 3

    .prologue
    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, wasReset:Z
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->reset()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 589
    const/4 v0, 0x1

    .line 591
    :cond_8
    return v0
.end method

.method public startDocumentInternal()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 111
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_needToCallStartDocument:Z

    if-eqz v5, :cond_e

    .line 113
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    .line 114
    iput-boolean v6, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_needToCallStartDocument:Z

    .line 116
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_inEntityRef:Z

    if-eqz v5, :cond_f

    .line 174
    :cond_e
    :goto_e
    return-void

    .line 119
    :cond_f
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_needToOutputDocTypeDecl:Z

    .line 120
    iput-boolean v6, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_startNewLine:Z

    .line 125
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getXMLVersion()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, version:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getOmitXMLDeclaration()Z

    move-result v5

    if-nez v5, :cond_e

    .line 128
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xml/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, encoding:Ljava/lang/String;
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_standaloneWasSpecified:Z

    if-eqz v5, :cond_8b

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " standalone=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getStandalone()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, standalone:Ljava/lang/String;
    :goto_47
    :try_start_47
    iget-object v4, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_writer:Ljava/io/Writer;

    .line 143
    .local v4, writer:Ljava/io/Writer;
    const-string v5, "<?xml version=\""

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 145
    const-string v5, "\" encoding=\""

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 147
    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 148
    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 149
    const-string v5, "?>"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 150
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_doIndent:Z

    if-eqz v5, :cond_e

    .line 151
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_standaloneWasSpecified:Z

    if-nez v5, :cond_7a

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getDoctypePublic()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7a

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 163
    :cond_7a
    iget-object v5, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_lineSep:[C

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_lineSepLen:I

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Writer;->write([CII)V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_82} :catch_83

    goto :goto_e

    .line 167
    .end local v4           #writer:Ljava/io/Writer;
    :catch_83
    move-exception v5

    move-object v0, v5

    .line 169
    .local v0, e:Ljava/io/IOException;
    new-instance v5, Lorg/xml/sax/SAXException;

    invoke-direct {v5, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 137
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #standalone:Ljava/lang/String;
    :cond_8b
    const-string v2, ""

    .restart local v2       #standalone:Ljava/lang/String;
    goto :goto_47
.end method

.method public startPreserving()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 221
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream$BoolStack;->push(Z)Z

    .line 223
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_ispreserve:Z

    .line 224
    return-void
.end method
