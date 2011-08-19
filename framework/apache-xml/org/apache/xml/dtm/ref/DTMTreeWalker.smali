.class public Lorg/apache/xml/dtm/ref/DTMTreeWalker;
.super Ljava/lang/Object;
.source "DTMTreeWalker.java"


# instance fields
.field private m_contentHandler:Lorg/xml/sax/ContentHandler;

.field protected m_dtm:Lorg/apache/xml/dtm/DTM;

.field nextIsRaw:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/dtm/DTM;)V
    .registers 4
    .parameter "contentHandler"
    .parameter "dtm"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    .line 93
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 94
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 95
    return-void
.end method

.method private final dispatachChars(I)V
    .registers 5
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    .line 205
    return-void
.end method


# virtual methods
.method protected endNode(I)V
    .registers 10
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 366
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v4

    packed-switch v4, :pswitch_data_5c

    .line 402
    :cond_a
    :goto_a
    :pswitch_a
    return-void

    .line 369
    :pswitch_b
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4}, Lorg/xml/sax/ContentHandler;->endDocument()V

    goto :goto_a

    .line 372
    :pswitch_11
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, p1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, ns:Ljava/lang/String;
    if-nez v1, :cond_1b

    .line 374
    const-string v1, ""

    .line 375
    :cond_1b
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v5, p1}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v6, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v1, v5, v6}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, p1, v7}, Lorg/apache/xml/dtm/DTM;->getFirstNamespaceNode(IZ)I

    move-result v2

    .local v2, nsn:I
    :goto_32
    const/4 v4, -0x1

    if-eq v4, v2, :cond_a

    .line 383
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, v2}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, prefix:Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4, v3}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 380
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, p1, v2, v7}, Lorg/apache/xml/dtm/DTM;->getNextNamespaceNode(IIZ)I

    move-result v2

    goto :goto_32

    .line 392
    .end local v1           #ns:Ljava/lang/String;
    .end local v2           #nsn:I
    .end local v3           #prefix:Ljava/lang/String;
    :pswitch_47
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v4, v4, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v4, :cond_a

    .line 394
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    .line 396
    .local v0, lh:Lorg/xml/sax/ext/LexicalHandler;
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    goto :goto_a

    .line 366
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_11
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_47
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getcontentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public setDTM(Lorg/apache/xml/dtm/DTM;)V
    .registers 2
    .parameter "dtm"

    .prologue
    .line 55
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 56
    return-void
.end method

.method public setcontentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 2
    .parameter "ch"

    .prologue
    .line 75
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 76
    return-void
.end method

.method protected startNode(I)V
    .registers 22
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object v6, v0

    instance-of v6, v6, Lorg/apache/xml/utils/NodeConsumer;

    if-eqz v6, :cond_9

    .line 224
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v6

    packed-switch v6, :pswitch_data_184

    .line 353
    :cond_18
    :goto_18
    :pswitch_18
    return-void

    .line 228
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v11

    .line 230
    .local v11, data:Lorg/apache/xml/utils/XMLString;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object v6, v0

    instance-of v6, v6, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v6, :cond_18

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object v15, v0

    check-cast v15, Lorg/xml/sax/ext/LexicalHandler;

    .line 233
    .local v15, lh:Lorg/xml/sax/ext/LexicalHandler;
    invoke-interface {v11, v15}, Lorg/apache/xml/utils/XMLString;->dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V

    goto :goto_18

    .line 242
    .end local v11           #data:Lorg/apache/xml/utils/XMLString;
    .end local v15           #lh:Lorg/xml/sax/ext/LexicalHandler;
    :pswitch_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object v6, v0

    invoke-interface {v6}, Lorg/xml/sax/ContentHandler;->startDocument()V

    goto :goto_18

    .line 245
    :pswitch_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move-object v12, v0

    .line 247
    .local v12, dtm:Lorg/apache/xml/dtm/DTM;
    const/4 v6, 0x1

    move-object v0, v12

    move/from16 v1, p1

    move v2, v6

    invoke-interface {v0, v1, v2}, Lorg/apache/xml/dtm/DTM;->getFirstNamespaceNode(IZ)I

    move-result v18

    .local v18, nsn:I
    :goto_50
    const/4 v6, -0x1

    move v0, v6

    move/from16 v1, v18

    if-eq v0, v1, :cond_7c

    .line 251
    move-object v0, v12

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v19

    .line 253
    .local v19, prefix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object v6, v0

    move-object v0, v12

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v6

    move-object/from16 v1, v19

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v6, 0x1

    move-object v0, v12

    move/from16 v1, p1

    move/from16 v2, v18

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/xml/dtm/DTM;->getNextNamespaceNode(IIZ)I

    move-result v18

    goto :goto_50

    .line 259
    .end local v19           #prefix:Ljava/lang/String;
    :cond_7c
    move-object v0, v12

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v17

    .line 260
    .local v17, ns:Ljava/lang/String;
    if-nez v17, :cond_87

    .line 261
    const-string v17, ""

    .line 264
    :cond_87
    new-instance v5, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v5}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 267
    .local v5, attrs:Lorg/xml/sax/helpers/AttributesImpl;
    move-object v0, v12

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v13

    .line 268
    .local v13, i:I
    :goto_93
    const/4 v6, -0x1

    if-eq v13, v6, :cond_b0

    .line 271
    invoke-interface {v12, v13}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v13}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v13}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "CDATA"

    invoke-interface {v12, v13}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-interface {v12, v13}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v13

    goto :goto_93

    .line 279
    :cond_b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move-object v8, v0

    move-object v0, v8

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v8

    move-object v0, v6

    move-object/from16 v1, v17

    move-object v2, v7

    move-object v3, v8

    move-object v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_18

    .line 286
    .end local v5           #attrs:Lorg/xml/sax/helpers/AttributesImpl;
    .end local v12           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v13           #i:I
    .end local v17           #ns:Ljava/lang/String;
    .end local v18           #nsn:I
    :pswitch_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v16

    .line 289
    .local v16, name:Ljava/lang/String;
    const-string v6, "xslt-next-is-raw"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f7

    .line 291
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    goto/16 :goto_18

    .line 295
    :cond_f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v6

    move-object/from16 v1, v16

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 302
    .end local v16           #name:Ljava/lang/String;
    :pswitch_111
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object v6, v0

    instance-of v14, v6, Lorg/xml/sax/ext/LexicalHandler;

    .line 303
    .local v14, isLexH:Z
    if-eqz v14, :cond_131

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object v5, v0

    check-cast v5, Lorg/xml/sax/ext/LexicalHandler;

    move-object v15, v5

    .line 306
    .restart local v15       #lh:Lorg/xml/sax/ext/LexicalHandler;
    :goto_122
    if-eqz v14, :cond_127

    .line 308
    invoke-interface {v15}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 311
    :cond_127
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->dispatachChars(I)V

    .line 314
    if-eqz v14, :cond_18

    .line 316
    invoke-interface {v15}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto/16 :goto_18

    .line 303
    .end local v15           #lh:Lorg/xml/sax/ext/LexicalHandler;
    :cond_131
    const/4 v6, 0x0

    move-object v15, v6

    goto :goto_122

    .line 323
    .end local v14           #isLexH:Z
    :pswitch_134
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    move v6, v0

    if-eqz v6, :cond_15e

    .line 325
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object v6, v0

    const-string v7, "javax.xml.transform.disable-output-escaping"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->dispatachChars(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object v6, v0

    const-string v7, "javax.xml.transform.enable-output-escaping"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 333
    :cond_15e
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->dispatachChars(I)V

    goto/16 :goto_18

    .line 339
    :pswitch_163
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object v6, v0

    instance-of v6, v6, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v6, :cond_18

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object v5, v0

    check-cast v5, Lorg/xml/sax/ext/LexicalHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 224
    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_42
        :pswitch_18
        :pswitch_134
        :pswitch_111
        :pswitch_163
        :pswitch_18
        :pswitch_d8
        :pswitch_19
        :pswitch_39
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public traverse(I)V
    .registers 6
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 110
    move v1, p1

    .line 112
    .local v1, top:I
    :goto_2
    if-eq v3, p1, :cond_2f

    .line 114
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->startNode(I)V

    .line 115
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, p1}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v0

    .line 116
    .local v0, nextNode:I
    :cond_d
    if-ne v3, v0, :cond_14

    .line 118
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->endNode(I)V

    .line 120
    if-ne v1, p1, :cond_16

    .line 143
    :cond_14
    :goto_14
    move p1, v0

    .line 144
    goto :goto_2

    .line 123
    :cond_16
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, p1}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v0

    .line 125
    if-ne v3, v0, :cond_d

    .line 127
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, p1}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p1

    .line 129
    if-eq v3, p1, :cond_28

    if-ne v1, p1, :cond_d

    .line 133
    :cond_28
    if-eq v3, p1, :cond_2d

    .line 134
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->endNode(I)V

    .line 136
    :cond_2d
    const/4 v0, -0x1

    .line 138
    goto :goto_14

    .line 145
    .end local v0           #nextNode:I
    :cond_2f
    return-void
.end method

.method public traverse(II)V
    .registers 6
    .parameter "pos"
    .parameter "top"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 165
    :goto_1
    if-eq v2, p1, :cond_2d

    .line 167
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->startNode(I)V

    .line 168
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v0

    .line 169
    .local v0, nextNode:I
    :cond_c
    if-ne v2, v0, :cond_15

    .line 171
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->endNode(I)V

    .line 173
    if-eq v2, p2, :cond_17

    if-ne p2, p1, :cond_17

    .line 191
    :cond_15
    :goto_15
    move p1, v0

    .line 192
    goto :goto_1

    .line 176
    :cond_17
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v0

    .line 178
    if-ne v2, v0, :cond_c

    .line 180
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p1

    .line 182
    if-eq v2, p1, :cond_2b

    if-eq v2, p2, :cond_c

    if-ne p2, p1, :cond_c

    .line 184
    :cond_2b
    const/4 v0, -0x1

    .line 186
    goto :goto_15

    .line 193
    .end local v0           #nextNode:I
    :cond_2d
    return-void
.end method
