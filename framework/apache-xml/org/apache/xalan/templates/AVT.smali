.class public Lorg/apache/xalan/templates/AVT;
.super Ljava/lang/Object;
.source "AVT.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/xalan/templates/XSLTVisitable;


# static fields
.field private static final INIT_BUFFER_CHUNK_BITS:I = 0x8

.field private static final USE_OBJECT_POOL:Z = false

.field static final serialVersionUID:J = 0x47b707542b5c3003L


# instance fields
.field private m_name:Ljava/lang/String;

.field private m_parts:Ljava/util/Vector;

.field private m_rawName:Ljava/lang/String;

.field private m_simpleString:Ljava/lang/String;

.field private m_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 25
    .parameter "handler"
    .parameter "uri"
    .parameter "name"
    .parameter "rawName"
    .parameter "stringedValue"
    .parameter "owner"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    .line 67
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    .line 168
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_uri:Ljava/lang/String;

    .line 169
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_name:Ljava/lang/String;

    .line 170
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_rawName:Ljava/lang/String;

    .line 172
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v15, "{}\"\'"

    const/16 v16, 0x1

    move-object v0, v13

    move-object/from16 v1, p5

    move-object v2, v15

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    .local v13, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v9

    .line 176
    .local v9, nTokens:I
    const/4 v15, 0x2

    if-ge v9, v15, :cond_53

    .line 178
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    .line 432
    :goto_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    move-object v15, v0

    if-nez v15, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    move-object v15, v0

    if-nez v15, :cond_52

    .line 436
    const-string v15, ""

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    .line 438
    :cond_52
    return-void

    .line 182
    :cond_53
    const/4 v4, 0x0

    .line 183
    .local v4, buffer:Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v7, 0x0

    .line 188
    .local v7, exprBuffer:Lorg/apache/xml/utils/FastStringBuffer;
    new-instance v4, Lorg/apache/xml/utils/FastStringBuffer;

    .end local v4           #buffer:Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v15, 0x6

    invoke-direct {v4, v15}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(I)V

    .line 189
    .restart local v4       #buffer:Lorg/apache/xml/utils/FastStringBuffer;
    new-instance v7, Lorg/apache/xml/utils/FastStringBuffer;

    .end local v7           #exprBuffer:Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v15, 0x6

    invoke-direct {v7, v15}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(I)V

    .line 193
    .restart local v7       #exprBuffer:Lorg/apache/xml/utils/FastStringBuffer;
    :try_start_61
    new-instance v15, Ljava/util/Vector;

    add-int/lit8 v16, v9, 0x1

    invoke-direct/range {v15 .. v16}, Ljava/util/Vector;-><init>(I)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    .line 195
    const/4 v12, 0x0

    .line 196
    .local v12, t:Ljava/lang/String;
    const/4 v8, 0x0

    .line 197
    .local v8, lookahead:Ljava/lang/String;
    const/4 v5, 0x0

    .line 199
    .local v5, error:Ljava/lang/String;
    :cond_70
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_a8

    .line 201
    if-eqz v8, :cond_c7

    .line 203
    move-object v12, v8

    .line 204
    const/4 v8, 0x0

    .line 209
    :goto_7a
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_1bf

    .line 211
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    sparse-switch v15, :sswitch_data_1cc

    .line 387
    invoke-virtual {v4, v12}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_61 .. :try_end_90} :catchall_d0

    .line 398
    :cond_90
    :goto_90
    if-eqz v5, :cond_70

    .line 402
    :try_start_92
    const-string v15, "WG_ATTR_TEMPLATE"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a8
    .catchall {:try_start_92 .. :try_end_a8} :catchall_d0
    .catch Lorg/xml/sax/SAXException; {:try_start_92 .. :try_end_a8} :catch_1c4

    .line 414
    :cond_a8
    :try_start_a8
    invoke-virtual {v4}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v15

    if-lez v15, :cond_c3

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    move-object v15, v0

    new-instance v16, Lorg/apache/xalan/templates/AVTPartSimple;

    invoke-virtual {v4}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/apache/xalan/templates/AVTPartSimple;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 417
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    .line 426
    :cond_c3
    const/4 v4, 0x0

    .line 427
    const/4 v7, 0x0

    .line 429
    goto/16 :goto_3d

    .line 207
    :cond_c7
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    goto :goto_7a

    .line 218
    :sswitch_cc
    invoke-virtual {v4, v12}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_a8 .. :try_end_cf} :catchall_d0

    goto :goto_90

    .line 425
    .end local v5           #error:Ljava/lang/String;
    .end local v8           #lookahead:Ljava/lang/String;
    .end local v12           #t:Ljava/lang/String;
    :catchall_d0
    move-exception v15

    .line 426
    const/4 v4, 0x0

    .line 427
    const/4 v7, 0x0

    throw v15

    .line 228
    .restart local v5       #error:Ljava/lang/String;
    .restart local v8       #lookahead:Ljava/lang/String;
    .restart local v12       #t:Ljava/lang/String;
    :sswitch_d4
    :try_start_d4
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 230
    const-string v15, "{"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e5

    .line 234
    invoke-virtual {v4, v8}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 236
    const/4 v8, 0x0

    goto :goto_90

    .line 251
    :cond_e5
    invoke-virtual {v4}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v15

    if-lez v15, :cond_100

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    move-object v15, v0

    new-instance v16, Lorg/apache/xalan/templates/AVTPartSimple;

    invoke-virtual {v4}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/apache/xalan/templates/AVTPartSimple;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 254
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    .line 257
    :cond_100
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    .line 259
    :goto_104
    if-eqz v8, :cond_174

    .line 261
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_16c

    .line 263
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    sparse-switch v15, :sswitch_data_1de

    .line 321
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    goto :goto_104

    .line 270
    :sswitch_121
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 272
    move-object v10, v8

    .line 275
    .local v10, quote:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 277
    :goto_129
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_137

    .line 279
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    goto :goto_129

    .line 284
    :cond_137
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 288
    goto :goto_104

    .line 294
    .end local v10           #quote:Ljava/lang/String;
    :sswitch_13f
    const-string v15, "ER_NO_CURLYBRACE"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 297
    const/4 v8, 0x0

    .line 299
    goto :goto_104

    .line 306
    :sswitch_149
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    .line 308
    invoke-virtual {v7}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->createXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;

    move-result-object v14

    .line 311
    .local v14, xpath:Lorg/apache/xpath/XPath;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    move-object v15, v0

    new-instance v16, Lorg/apache/xalan/templates/AVTPartXPath;

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/xalan/templates/AVTPartXPath;-><init>(Lorg/apache/xpath/XPath;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 313
    const/4 v8, 0x0

    .line 315
    goto :goto_104

    .line 331
    .end local v14           #xpath:Lorg/apache/xpath/XPath;
    :cond_16c
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_172
    .catchall {:try_start_d4 .. :try_end_172} :catchall_d0
    .catch Ljava/util/NoSuchElementException; {:try_start_d4 .. :try_end_172} :catch_178

    move-result-object v8

    goto :goto_104

    .line 337
    :cond_174
    if-eqz v5, :cond_90

    goto/16 :goto_90

    .line 345
    :catch_178
    move-exception v15

    move-object v6, v15

    .line 347
    .local v6, ex:Ljava/util/NoSuchElementException;
    :try_start_17a
    const-string v15, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p3, v16, v17

    const/16 v17, 0x1

    aput-object p5, v16, v17

    invoke-static/range {v15 .. v16}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 348
    goto/16 :goto_90

    .line 353
    .end local v6           #ex:Ljava/util/NoSuchElementException;
    :sswitch_192
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 355
    const-string v15, "}"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a4

    .line 359
    invoke-virtual {v4, v8}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_1a1
    .catchall {:try_start_17a .. :try_end_1a1} :catchall_d0

    .line 361
    const/4 v8, 0x0

    goto/16 :goto_90

    .line 369
    :cond_1a4
    :try_start_1a4
    const-string v15, "WG_FOUND_CURLYBRACE"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1b0
    .catchall {:try_start_1a4 .. :try_end_1b0} :catchall_d0
    .catch Lorg/xml/sax/SAXException; {:try_start_1a4 .. :try_end_1b0} :catch_1b7

    .line 376
    :try_start_1b0
    const-string v15, "}"

    invoke-virtual {v4, v15}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_90

    .line 371
    :catch_1b7
    move-exception v15

    move-object v11, v15

    .line 373
    .local v11, se:Lorg/xml/sax/SAXException;
    new-instance v15, Ljavax/xml/transform/TransformerException;

    invoke-direct {v15, v11}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 395
    .end local v11           #se:Lorg/xml/sax/SAXException;
    :cond_1bf
    invoke-virtual {v4, v12}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_90

    .line 405
    :catch_1c4
    move-exception v15

    move-object v11, v15

    .line 407
    .restart local v11       #se:Lorg/xml/sax/SAXException;
    new-instance v15, Ljavax/xml/transform/TransformerException;

    invoke-direct {v15, v11}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v15
    :try_end_1cc
    .catchall {:try_start_1b0 .. :try_end_1cc} :catchall_d0

    .line 211
    :sswitch_data_1cc
    .sparse-switch
        0x22 -> :sswitch_cc
        0x27 -> :sswitch_cc
        0x7b -> :sswitch_d4
        0x7d -> :sswitch_192
    .end sparse-switch

    .line 263
    :sswitch_data_1de
    .sparse-switch
        0x22 -> :sswitch_121
        0x27 -> :sswitch_121
        0x7b -> :sswitch_13f
        0x7d -> :sswitch_149
    .end sparse-switch
.end method

.method private final getBuffer()Lorg/apache/xml/utils/FastStringBuffer;
    .registers 3

    .prologue
    .line 611
    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    .registers 6
    .parameter "visitor"

    .prologue
    .line 586
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitAVT(Lorg/apache/xalan/templates/AVT;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v3, :cond_21

    .line 588
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 590
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, v1, :cond_21

    .line 592
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/AVTPart;

    .line 594
    .local v2, part:Lorg/apache/xalan/templates/AVTPart;
    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/AVTPart;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 597
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #part:Lorg/apache/xalan/templates/AVTPart;
    :cond_21
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .registers 5

    .prologue
    .line 540
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v3, :cond_20

    .line 542
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 544
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v1, :cond_20

    .line 546
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/AVTPart;

    .line 548
    .local v2, part:Lorg/apache/xalan/templates/AVTPart;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/AVTPart;->canTraverseOutsideSubtree()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 549
    const/4 v3, 0x1

    .line 553
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #part:Lorg/apache/xalan/templates/AVTPart;
    :goto_1c
    return v3

    .line 544
    .restart local v0       #i:I
    .restart local v1       #n:I
    .restart local v2       #part:Lorg/apache/xalan/templates/AVTPart;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 553
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #part:Lorg/apache/xalan/templates/AVTPart;
    :cond_20
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method public evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;
    .registers 11
    .parameter "xctxt"
    .parameter "context"
    .parameter "nsNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 490
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 491
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    .line 511
    :goto_7
    return-object v5

    .line 492
    :cond_8
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v5, :cond_36

    .line 493
    invoke-direct {p0}, Lorg/apache/xalan/templates/AVT;->getBuffer()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 494
    .local v0, buf:Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v3, 0x0

    .line 495
    .local v3, out:Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    .line 497
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    if-ge v1, v2, :cond_28

    .line 498
    :try_start_1a
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/AVTPart;

    .line 499
    .local v4, part:Lorg/apache/xalan/templates/AVTPart;
    invoke-virtual {v4, p1, v0, p2, p3}, Lorg/apache/xalan/templates/AVTPart;->evaluate(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/FastStringBuffer;ILorg/apache/xml/utils/PrefixResolver;)V

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 501
    .end local v4           #part:Lorg/apache/xalan/templates/AVTPart;
    :cond_28
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_31

    move-result-object v3

    .line 506
    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    move-object v5, v3

    .line 509
    goto :goto_7

    .line 505
    :catchall_31
    move-exception v5

    .line 506
    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    throw v5

    .line 511
    .end local v0           #buf:Lorg/apache/xml/utils/FastStringBuffer;
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #out:Ljava/lang/String;
    :cond_36
    const-string v5, ""

    goto :goto_7
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .registers 7
    .parameter "vars"
    .parameter "globalsSize"

    .prologue
    .line 568
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v3, :cond_1b

    .line 570
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 572
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v1, :cond_1b

    .line 574
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/AVTPart;

    .line 576
    .local v2, part:Lorg/apache/xalan/templates/AVTPart;
    invoke-virtual {v2, p1, p2}, Lorg/apache/xalan/templates/AVTPart;->fixupVariables(Ljava/util/Vector;I)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 579
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #part:Lorg/apache/xalan/templates/AVTPart;
    :cond_1b
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRawName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_rawName:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleString()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 448
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 449
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    .line 471
    :goto_7
    return-object v5

    .line 451
    :cond_8
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v5, :cond_3a

    .line 452
    invoke-direct {p0}, Lorg/apache/xalan/templates/AVT;->getBuffer()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 453
    .local v0, buf:Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v3, 0x0

    .line 455
    .local v3, out:Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    .line 457
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    if-ge v1, v2, :cond_2c

    .line 458
    :try_start_1a
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/AVTPart;

    .line 459
    .local v4, part:Lorg/apache/xalan/templates/AVTPart;
    invoke-virtual {v4}, Lorg/apache/xalan/templates/AVTPart;->getSimpleString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 461
    .end local v4           #part:Lorg/apache/xalan/templates/AVTPart;
    :cond_2c
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_35

    move-result-object v3

    .line 466
    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    move-object v5, v3

    .line 469
    goto :goto_7

    .line 465
    :catchall_35
    move-exception v5

    .line 466
    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    throw v5

    .line 471
    .end local v0           #buf:Lorg/apache/xml/utils/FastStringBuffer;
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #out:Ljava/lang/String;
    :cond_3a
    const-string v5, ""

    goto :goto_7
.end method

.method public getURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_uri:Ljava/lang/String;

    return-object v0
.end method

.method public isContextInsensitive()Z
    .registers 2

    .prologue
    .line 528
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSimple()Z
    .registers 2

    .prologue
    .line 604
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 120
    iput-object p1, p0, Lorg/apache/xalan/templates/AVT;->m_name:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setRawName(Ljava/lang/String;)V
    .registers 2
    .parameter "rawName"

    .prologue
    .line 94
    iput-object p1, p0, Lorg/apache/xalan/templates/AVT;->m_rawName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 146
    iput-object p1, p0, Lorg/apache/xalan/templates/AVT;->m_uri:Ljava/lang/String;

    .line 147
    return-void
.end method
