.class public Lorg/dom4j/io/XPP3Reader;
.super Ljava/lang/Object;
.source "XPP3Reader.java"


# instance fields
.field private dispatchHandler:Lorg/dom4j/io/DispatchHandler;

.field private factory:Lorg/dom4j/DocumentFactory;

.field private xppFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

.field private xppParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/dom4j/io/XPP3Reader;->factory:Lorg/dom4j/DocumentFactory;

    .line 60
    return-void
.end method


# virtual methods
.method public addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V
    .locals 1
    .parameter "path"
    .parameter "handler"

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/dom4j/io/XPP3Reader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/io/DispatchHandler;->addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V

    .line 332
    return-void
.end method

.method protected createReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method protected getDispatchHandler()Lorg/dom4j/io/DispatchHandler;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lorg/dom4j/io/XPP3Reader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lorg/dom4j/io/DispatchHandler;

    invoke-direct {v0}, Lorg/dom4j/io/DispatchHandler;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XPP3Reader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    .line 483
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XPP3Reader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    return-object v0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/dom4j/io/XPP3Reader;->factory:Lorg/dom4j/DocumentFactory;

    if-nez v0, :cond_0

    .line 299
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XPP3Reader;->factory:Lorg/dom4j/DocumentFactory;

    .line 302
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XPP3Reader;->factory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getXPPFactory()Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lorg/dom4j/io/XPP3Reader;->xppFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    if-nez v0, :cond_0

    .line 279
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XPP3Reader;->xppFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 282
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XPP3Reader;->xppFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 284
    iget-object v0, p0, Lorg/dom4j/io/XPP3Reader;->xppFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    return-object v0
.end method

.method public getXPPParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lorg/dom4j/io/XPP3Reader;->xppParser:Lorg/xmlpull/v1/XmlPullParser;

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lorg/dom4j/io/XPP3Reader;->getXPPFactory()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XPP3Reader;->xppParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 274
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XPP3Reader;->xppParser:Lorg/xmlpull/v1/XmlPullParser;

    return-object v0
.end method

.method protected parseDocument()Lorg/dom4j/Document;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual/range {p0 .. p0}, Lorg/dom4j/io/XPP3Reader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v4

    .line 363
    .local v4, df:Lorg/dom4j/DocumentFactory;
    invoke-virtual {v4}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v5

    .line 364
    .local v5, document:Lorg/dom4j/Document;
    const/4 v12, 0x0

    .line 365
    .local v12, parent:Lorg/dom4j/Element;
    invoke-virtual/range {p0 .. p0}, Lorg/dom4j/io/XPP3Reader;->getXPPParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 366
    .local v13, pp:Lorg/xmlpull/v1/XmlPullParser;
    const-string v20, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/16 v21, 0x1

    move-object v0, v13

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 369
    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v19

    .line 371
    .local v19, type:I
    packed-switch v19, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 413
    :pswitch_2
    return-object v5

    .line 373
    :pswitch_3
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v17

    .line 374
    .local v17, text:Ljava/lang/String;
    const-string v20, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 376
    .local v7, loc:I
    if-ltz v7, :cond_1

    .line 377
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 378
    .local v16, target:Ljava/lang/String;
    add-int/lit8 v20, v7, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 379
    .local v18, txt:Ljava/lang/String;
    move-object v0, v5

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/dom4j/Document;->addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;

    goto :goto_0

    .line 381
    .end local v16           #target:Ljava/lang/String;
    .end local v18           #txt:Ljava/lang/String;
    :cond_1
    const-string v20, ""

    move-object v0, v5

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/dom4j/Document;->addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;

    goto :goto_0

    .line 388
    .end local v7           #loc:I
    .end local v17           #text:Ljava/lang/String;
    :pswitch_4
    if-eqz v12, :cond_2

    .line 389
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->addComment(Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_0

    .line 391
    :cond_2
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v20

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->addComment(Ljava/lang/String;)Lorg/dom4j/Document;

    goto :goto_0

    .line 398
    :pswitch_5
    if-eqz v12, :cond_3

    .line 399
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->addCDATA(Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_0

    .line 401
    :cond_3
    const-string v8, "Cannot have text content outside of the root document"

    .line 403
    .local v8, msg:Ljava/lang/String;
    new-instance v20, Lorg/dom4j/DocumentException;

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-direct {v0, v1}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 416
    .end local v8           #msg:Ljava/lang/String;
    :pswitch_6
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_4

    .line 417
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v20

    move-object/from16 v15, v20

    .line 419
    .local v15, qname:Lorg/dom4j/QName;
    :goto_1
    invoke-virtual {v4, v15}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v9

    .line 420
    .local v9, newElement:Lorg/dom4j/Element;
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    const/16 v21, 0x1

    sub-int v20, v20, v21

    move-object v0, v13

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v11

    .line 421
    .local v11, nsStart:I
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    move-object v0, v13

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v10

    .line 423
    .local v10, nsEnd:I
    move v6, v11

    .local v6, i:I
    :goto_2
    if-lt v6, v10, :cond_5

    .line 430
    const/4 v6, 0x0

    :goto_3
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v20

    move v0, v6

    move/from16 v1, v20

    if-lt v0, v1, :cond_7

    .line 439
    if-eqz v12, :cond_9

    .line 440
    invoke-interface {v12, v9}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 445
    :goto_4
    move-object v12, v9

    .line 447
    goto/16 :goto_0

    .line 418
    .end local v6           #i:I
    .end local v9           #newElement:Lorg/dom4j/Element;
    .end local v10           #nsEnd:I
    .end local v11           #nsStart:I
    .end local v15           #qname:Lorg/dom4j/QName;
    :cond_4
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v21

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v22

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v20

    move-object/from16 v15, v20

    goto :goto_1

    .line 424
    .restart local v6       #i:I
    .restart local v9       #newElement:Lorg/dom4j/Element;
    .restart local v10       #nsEnd:I
    .restart local v11       #nsStart:I
    .restart local v15       #qname:Lorg/dom4j/QName;
    :cond_5
    invoke-interface {v13, v6}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_6

    .line 425
    invoke-interface {v13, v6}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v20

    .line 426
    invoke-interface {v13, v6}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v21

    .line 425
    move-object v0, v9

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/dom4j/Element;->addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 423
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 431
    :cond_7
    invoke-interface {v13, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_8

    .line 432
    invoke-interface {v13, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v20

    move-object/from16 v14, v20

    .line 436
    .local v14, qa:Lorg/dom4j/QName;
    :goto_5
    invoke-interface {v13, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v9

    move-object v1, v14

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 430
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 433
    .end local v14           #qa:Lorg/dom4j/QName;
    :cond_8
    invoke-interface {v13, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v20

    .line 434
    invoke-interface {v13, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v21

    .line 435
    invoke-interface {v13, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v22

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v20

    move-object/from16 v14, v20

    goto :goto_5

    .line 442
    :cond_9
    invoke-interface {v5, v9}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    goto :goto_4

    .line 451
    .end local v6           #i:I
    .end local v9           #newElement:Lorg/dom4j/Element;
    .end local v10           #nsEnd:I
    .end local v11           #nsStart:I
    .end local v15           #qname:Lorg/dom4j/QName;
    :pswitch_7
    if-eqz v12, :cond_0

    .line 452
    invoke-interface {v12}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v12

    .line 455
    goto/16 :goto_0

    .line 459
    :pswitch_8
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v17

    .line 461
    .restart local v17       #text:Ljava/lang/String;
    if-eqz v12, :cond_a

    .line 462
    move-object v0, v12

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    goto/16 :goto_0

    .line 464
    :cond_a
    const-string v8, "Cannot have text content outside of the root document"

    .line 466
    .restart local v8       #msg:Ljava/lang/String;
    new-instance v20, Lorg/dom4j/DocumentException;

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-direct {v0, v1}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public read(Ljava/io/File;)Lorg/dom4j/Document;
    .locals 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, systemID:Ljava/lang/String;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v1, v0}, Lorg/dom4j/io/XPP3Reader;->read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    return-object v1
.end method

.method public read(Ljava/io/InputStream;)Lorg/dom4j/Document;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XPP3Reader;->createReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XPP3Reader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/InputStream;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1
    .parameter "in"
    .parameter "systemID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XPP3Reader;->createReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/dom4j/io/XPP3Reader;->read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/Reader;)Lorg/dom4j/Document;
    .locals 1
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/dom4j/io/XPP3Reader;->getXPPParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 189
    invoke-virtual {p0}, Lorg/dom4j/io/XPP3Reader;->parseDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1
    .parameter "reader"
    .parameter "systemID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XPP3Reader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 262
    .local v0, document:Lorg/dom4j/Document;
    invoke-interface {v0, p2}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 264
    return-object v0
.end method

.method public read(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1
    .parameter "systemID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 137
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 139
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XPP3Reader;->read(Ljava/net/URL;)Lorg/dom4j/Document;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XPP3Reader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    goto :goto_0
.end method

.method public read(Ljava/net/URL;)Lorg/dom4j/Document;
    .locals 2
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, systemID:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/XPP3Reader;->createReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/dom4j/io/XPP3Reader;->read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    return-object v1
.end method

.method public read([C)Lorg/dom4j/Document;
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0}, Lorg/dom4j/io/XPP3Reader;->getXPPParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v1, Ljava/io/CharArrayReader;

    invoke-direct {v1, p1}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 213
    invoke-virtual {p0}, Lorg/dom4j/io/XPP3Reader;->parseDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public removeHandler(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 342
    invoke-virtual {p0}, Lorg/dom4j/io/XPP3Reader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/DispatchHandler;->removeHandler(Ljava/lang/String;)Lorg/dom4j/ElementHandler;

    .line 343
    return-void
.end method

.method public setDefaultHandler(Lorg/dom4j/ElementHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 355
    invoke-virtual {p0}, Lorg/dom4j/io/XPP3Reader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/DispatchHandler;->setDefaultHandler(Lorg/dom4j/ElementHandler;)V

    .line 356
    return-void
.end method

.method protected setDispatchHandler(Lorg/dom4j/io/DispatchHandler;)V
    .locals 0
    .parameter "dispatchHandler"

    .prologue
    .line 487
    iput-object p1, p0, Lorg/dom4j/io/XPP3Reader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    .line 488
    return-void
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 0
    .parameter "documentFactory"

    .prologue
    .line 317
    iput-object p1, p0, Lorg/dom4j/io/XPP3Reader;->factory:Lorg/dom4j/DocumentFactory;

    .line 318
    return-void
.end method

.method public setXPPFactory(Lorg/xmlpull/v1/XmlPullParserFactory;)V
    .locals 0
    .parameter "xPPfactory"

    .prologue
    .line 288
    iput-object p1, p0, Lorg/dom4j/io/XPP3Reader;->xppFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 289
    return-void
.end method
