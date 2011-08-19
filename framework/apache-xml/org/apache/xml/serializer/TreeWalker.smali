.class public final Lorg/apache/xml/serializer/TreeWalker;
.super Ljava/lang/Object;
.source "TreeWalker.java"


# instance fields
.field private final m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

.field private final m_contentHandler:Lorg/xml/sax/ContentHandler;

.field protected final m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

.field private final m_locator:Lorg/xml/sax/helpers/LocatorImpl;

.field nextIsRaw:Z


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .registers 3
    .parameter "ch"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V
    .registers 6
    .parameter "contentHandler"
    .parameter "systemId"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    .line 91
    iput-object p1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 92
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, v0, Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v0, :cond_60

    .line 93
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v0, Lorg/apache/xml/serializer/SerializationHandler;

    iput-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    .line 99
    :goto_1b
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 100
    if-eqz p2, :cond_64

    .line 101
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {v0, p2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 112
    :goto_29
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_34

    .line 113
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 116
    :cond_34
    :try_start_34
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dummy.xsl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_58} :catch_8b

    .line 121
    :goto_58
    new-instance v0, Lorg/apache/xml/serializer/utils/DOM2Helper;

    invoke-direct {v0}, Lorg/apache/xml/serializer/utils/DOM2Helper;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    .line 122
    return-void

    .line 96
    :cond_60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    goto :goto_1b

    .line 105
    :cond_64
    :try_start_64
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dummy.xsl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/SecurityException; {:try_start_64 .. :try_end_88} :catch_89

    goto :goto_29

    .line 107
    :catch_89
    move-exception v0

    goto :goto_29

    .line 118
    :catch_8b
    move-exception v0

    goto :goto_58
.end method

.method private final dispatachChars(Lorg/w3c/dom/Node;)V
    .registers 7
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v1, :cond_a

    .line 241
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1, p1}, Lorg/apache/xml/serializer/SerializationHandler;->characters(Lorg/w3c/dom/Node;)V

    .line 248
    .end local p1
    :goto_9
    return-void

    .line 245
    .restart local p1
    :cond_a
    check-cast p1, Lorg/w3c/dom/Text;

    .end local p1
    invoke-interface {p1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, data:Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_9
.end method


# virtual methods
.method protected endNode(Lorg/w3c/dom/Node;)V
    .registers 21
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v16

    packed-switch v16, :pswitch_data_f6

    .line 525
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 457
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    .line 458
    .local v13, ns:Ljava/lang/String;
    if-nez v13, :cond_1a

    .line 459
    const-string v13, ""

    .line 460
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object v1, v13

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v16, v0

    if-nez v16, :cond_7

    .line 468
    move-object/from16 v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v8, v0

    .line 469
    .local v8, elem_node:Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 470
    .local v6, atts:Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v12

    .line 474
    .local v12, nAttrs:I
    const/16 v16, 0x1

    sub-int v10, v12, v16

    .local v10, i:I
    :goto_55
    if-ltz v10, :cond_b4

    .line 476
    invoke-interface {v6, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 477
    .local v4, attr:Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 478
    .local v5, attrName:Ljava/lang/String;
    const/16 v16, 0x3a

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 481
    .local v7, colon:I
    const-string v16, "xmlns"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7e

    const-string v16, "xmlns:"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9b

    .line 486
    :cond_7e
    if-gez v7, :cond_91

    .line 487
    const-string v14, ""

    .line 491
    .local v14, prefix:Ljava/lang/String;
    :goto_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 474
    .end local v14           #prefix:Ljava/lang/String;
    :cond_8e
    :goto_8e
    add-int/lit8 v10, v10, -0x1

    goto :goto_55

    .line 489
    :cond_91
    add-int/lit8 v16, v7, 0x1

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #prefix:Ljava/lang/String;
    goto :goto_82

    .line 493
    .end local v14           #prefix:Ljava/lang/String;
    :cond_9b
    if-lez v7, :cond_8e

    .line 494
    const/16 v16, 0x0

    move-object v0, v5

    move/from16 v1, v16

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 495
    .restart local v14       #prefix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_8e

    .line 499
    .end local v4           #attr:Lorg/w3c/dom/Node;
    .end local v5           #attrName:Ljava/lang/String;
    .end local v7           #colon:I
    .end local v14           #prefix:Ljava/lang/String;
    :cond_b4
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v15

    .line 500
    .local v15, uri:Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 501
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v14

    .line 502
    .restart local v14       #prefix:Ljava/lang/String;
    if-nez v14, :cond_c2

    .line 503
    const-string v14, ""

    .line 504
    :cond_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 513
    .end local v6           #atts:Lorg/w3c/dom/NamedNodeMap;
    .end local v8           #elem_node:Lorg/w3c/dom/Element;
    .end local v10           #i:I
    .end local v12           #nAttrs:I
    .end local v13           #ns:Ljava/lang/String;
    .end local v14           #prefix:Ljava/lang/String;
    .end local v15           #uri:Ljava/lang/String;
    :pswitch_d0
    move-object/from16 v0, p1

    check-cast v0, Lorg/w3c/dom/EntityReference;

    move-object v9, v0

    .line 515
    .local v9, eref:Lorg/w3c/dom/EntityReference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object v11, v0

    check-cast v11, Lorg/xml/sax/ext/LexicalHandler;

    .line 519
    .local v11, lh:Lorg/xml/sax/ext/LexicalHandler;
    invoke-interface {v9}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v16

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 451
    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_d0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method protected startNode(Lorg/w3c/dom/Node;)V
    .registers 29
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 271
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/xml/sax/Locator;

    move/from16 v22, v0

    if-eqz v22, :cond_49

    .line 273
    move-object/from16 v0, p1

    check-cast v0, Lorg/xml/sax/Locator;

    move-object v15, v0

    .line 274
    .local v15, loc:Lorg/xml/sax/Locator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v22, v0

    invoke-interface {v15}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v22, v0

    invoke-interface {v15}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v22, v0

    invoke-interface {v15}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v22, v0

    invoke-interface {v15}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 285
    .end local v15           #loc:Lorg/xml/sax/Locator;
    :goto_41
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v22

    packed-switch v22, :pswitch_data_22e

    .line 438
    .end local p0
    .end local p1
    :cond_48
    :goto_48
    :pswitch_48
    return-void

    .line 281
    .restart local p0
    .restart local p1
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    goto :goto_41

    .line 289
    :pswitch_60
    check-cast p1, Lorg/w3c/dom/Comment;

    .end local p1
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v9

    .line 291
    .local v9, data:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v22, v0

    if-eqz v22, :cond_48

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object v14, v0

    check-cast v14, Lorg/xml/sax/ext/LexicalHandler;

    .line 295
    .local v14, lh:Lorg/xml/sax/ext/LexicalHandler;
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v24

    move-object v0, v14

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    goto :goto_48

    .line 307
    .end local v9           #data:Ljava/lang/String;
    .end local v14           #lh:Lorg/xml/sax/ext/LexicalHandler;
    .restart local p1
    :pswitch_90
    move-object/from16 v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v10, v0

    .line 312
    .local v10, elem_node:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v21

    .line 313
    .local v21, uri:Ljava/lang/String;
    if-eqz v21, :cond_b2

    .line 314
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v20

    .line 315
    .local v20, prefix:Ljava/lang/String;
    if-nez v20, :cond_a3

    .line 316
    const-string v20, ""

    .line 317
    :cond_a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .end local v20           #prefix:Ljava/lang/String;
    :cond_b2
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 321
    .local v7, atts:Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v16

    .line 327
    .local v16, nAttrs:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_bb
    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_12d

    .line 329
    invoke-interface {v7, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 330
    .local v5, attr:Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, attrName:Ljava/lang/String;
    const/16 v22, 0x3a

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 335
    .local v8, colon:I
    const-string v22, "xmlns"

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_e7

    const-string v22, "xmlns:"

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_10b

    .line 340
    :cond_e7
    if-gez v8, :cond_101

    .line 341
    const-string v20, ""

    .line 345
    .restart local v20       #prefix:Ljava/lang/String;
    :goto_eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .end local v20           #prefix:Ljava/lang/String;
    :cond_fe
    :goto_fe
    add-int/lit8 v12, v12, 0x1

    goto :goto_bb

    .line 343
    :cond_101
    add-int/lit8 v22, v8, 0x1

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .restart local v20       #prefix:Ljava/lang/String;
    goto :goto_eb

    .line 348
    .end local v20           #prefix:Ljava/lang/String;
    :cond_10b
    if-lez v8, :cond_fe

    .line 349
    const/16 v22, 0x0

    move-object v0, v6

    move/from16 v1, v22

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 350
    .restart local v20       #prefix:Ljava/lang/String;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v21

    .line 351
    if-eqz v21, :cond_fe

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fe

    .line 356
    .end local v5           #attr:Lorg/w3c/dom/Node;
    .end local v6           #attrName:Ljava/lang/String;
    .end local v8           #colon:I
    .end local v20           #prefix:Ljava/lang/String;
    :cond_12d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v18

    .line 357
    .local v18, ns:Ljava/lang/String;
    if-nez v18, :cond_13f

    .line 358
    const-string v18, ""

    .line 359
    :cond_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Lorg/apache/xml/serializer/utils/AttList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object v1, v7

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/serializer/utils/AttList;-><init>(Lorg/w3c/dom/NamedNodeMap;Lorg/apache/xml/serializer/utils/DOM2Helper;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_48

    .line 366
    .end local v7           #atts:Lorg/w3c/dom/NamedNodeMap;
    .end local v10           #elem_node:Lorg/w3c/dom/Element;
    .end local v12           #i:I
    .end local v16           #nAttrs:I
    .end local v18           #ns:Ljava/lang/String;
    .end local v21           #uri:Ljava/lang/String;
    :pswitch_176
    move-object/from16 v0, p1

    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    move-object/from16 v19, v0

    .line 367
    .local v19, pi:Lorg/w3c/dom/ProcessingInstruction;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v17

    .line 370
    .local v17, name:Ljava/lang/String;
    const-string v22, "xslt-next-is-raw"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_196

    .line 372
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    goto/16 :goto_48

    .line 376
    :cond_196
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_48

    .line 383
    .end local v17           #name:Ljava/lang/String;
    .end local v19           #pi:Lorg/w3c/dom/ProcessingInstruction;
    :pswitch_1a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    move v13, v0

    .line 384
    .local v13, isLexH:Z
    if-eqz v13, :cond_1cd

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object v5, v0

    check-cast v5, Lorg/xml/sax/ext/LexicalHandler;

    move-object v14, v5

    .line 387
    .restart local v14       #lh:Lorg/xml/sax/ext/LexicalHandler;
    :goto_1be
    if-eqz v13, :cond_1c3

    .line 389
    invoke-interface {v14}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 392
    :cond_1c3
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/serializer/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    .line 395
    if-eqz v13, :cond_48

    .line 397
    invoke-interface {v14}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto/16 :goto_48

    .line 384
    .end local v14           #lh:Lorg/xml/sax/ext/LexicalHandler;
    :cond_1cd
    const/16 v22, 0x0

    move-object/from16 v14, v22

    goto :goto_1be

    .line 406
    .end local v13           #isLexH:Z
    :pswitch_1d2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    move/from16 v22, v0

    if-eqz v22, :cond_201

    .line 408
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    const-string v23, "javax.xml.transform.disable-output-escaping"

    const-string v24, ""

    invoke-interface/range {v22 .. v24}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/serializer/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    const-string v23, "javax.xml.transform.enable-output-escaping"

    const-string v24, ""

    invoke-interface/range {v22 .. v24}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_48

    .line 416
    :cond_201
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/serializer/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    goto/16 :goto_48

    .line 422
    :pswitch_206
    move-object/from16 v0, p1

    check-cast v0, Lorg/w3c/dom/EntityReference;

    move-object v11, v0

    .line 424
    .local v11, eref:Lorg/w3c/dom/EntityReference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v22, v0

    if-eqz v22, :cond_48

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v11}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    goto/16 :goto_48

    .line 285
    :pswitch_data_22e
    .packed-switch 0x1
        :pswitch_90
        :pswitch_48
        :pswitch_1d2
        :pswitch_1a9
        :pswitch_206
        :pswitch_48
        :pswitch_176
        :pswitch_60
        :pswitch_48
        :pswitch_48
        :pswitch_48
    .end packed-switch
.end method

.method public traverse(Lorg/w3c/dom/Node;)V
    .registers 5
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v2, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 141
    move-object v1, p1

    .line 143
    .local v1, top:Lorg/w3c/dom/Node;
    :goto_6
    if-eqz p1, :cond_35

    .line 145
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    .line 147
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 149
    .local v0, nextNode:Lorg/w3c/dom/Node;
    :cond_f
    if-nez v0, :cond_1a

    .line 151
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    .line 153
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 174
    :cond_1a
    :goto_1a
    move-object p1, v0

    .line 175
    goto :goto_6

    .line 156
    :cond_1c
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 158
    if-nez v0, :cond_f

    .line 160
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 162
    if-eqz p1, :cond_2e

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 164
    :cond_2e
    if-eqz p1, :cond_33

    .line 165
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    .line 167
    :cond_33
    const/4 v0, 0x0

    .line 169
    goto :goto_1a

    .line 176
    .end local v0           #nextNode:Lorg/w3c/dom/Node;
    :cond_35
    iget-object v2, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 177
    return-void
.end method

.method public traverse(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .registers 5
    .parameter "pos"
    .parameter "top"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 197
    :goto_5
    if-eqz p1, :cond_33

    .line 199
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    .line 201
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 203
    .local v0, nextNode:Lorg/w3c/dom/Node;
    :cond_e
    if-nez v0, :cond_1b

    .line 205
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    .line 207
    if-eqz p2, :cond_1d

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 225
    :cond_1b
    :goto_1b
    move-object p1, v0

    .line 226
    goto :goto_5

    .line 210
    :cond_1d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 212
    if-nez v0, :cond_e

    .line 214
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 216
    if-eqz p1, :cond_31

    if-eqz p2, :cond_e

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 218
    :cond_31
    const/4 v0, 0x0

    .line 220
    goto :goto_1b

    .line 227
    .end local v0           #nextNode:Lorg/w3c/dom/Node;
    :cond_33
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 228
    return-void
.end method
