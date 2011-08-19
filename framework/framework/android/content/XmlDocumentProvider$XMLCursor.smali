.class Landroid/content/XmlDocumentProvider$XMLCursor;
.super Landroid/database/MatrixCursor;
.source "XmlDocumentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/XmlDocumentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XMLCursor"
.end annotation


# instance fields
.field private mActiveTextDepthMask:[Ljava/util/BitSet;

.field private mAttributeNames:[Ljava/lang/String;

.field private mCurrentValues:[Ljava/lang/String;

.field private final mNumberOfProjections:I

.field private mProjectionPatterns:[Ljava/util/regex/Pattern;

.field private final mSelectionPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .parameter "selection"
    .parameter "projections"

    .prologue
    .line 304
    invoke-direct {p0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 306
    array-length v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/content/XmlDocumentProvider$XMLCursor;->mNumberOfProjections:I

    .line 307
    invoke-direct {p0, p1}, Landroid/content/XmlDocumentProvider$XMLCursor;->createPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Landroid/content/XmlDocumentProvider$XMLCursor;->mSelectionPattern:Ljava/util/regex/Pattern;

    .line 308
    invoke-direct {p0, p2}, Landroid/content/XmlDocumentProvider$XMLCursor;->createProjectionPattern([Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method private createPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 7
    .parameter "input"

    .prologue
    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "//"

    const-string v3, "/(.*/|)"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "^/"

    const-string v4, "^/"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, pattern:Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    return-object v1
.end method

.method private createProjectionPattern([Ljava/lang/String;)V
    .registers 8
    .parameter "projections"

    .prologue
    const/4 v5, 0x0

    .line 317
    iget v3, p0, Landroid/content/XmlDocumentProvider$XMLCursor;->mNumberOfProjections:I

    new-array v3, v3, [Ljava/util/regex/Pattern;

    iput-object v3, p0, Landroid/content/XmlDocumentProvider$XMLCursor;->mProjectionPatterns:[Ljava/util/regex/Pattern;

    .line 318
    iget v3, p0, Landroid/content/XmlDocumentProvider$XMLCursor;->mNumberOfProjections:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/content/XmlDocumentProvider$XMLCursor;->mAttributeNames:[Ljava/lang/String;

    .line 319
    iget v3, p0, Landroid/content/XmlDocumentProvider$XMLCursor;->mNumberOfProjections:I

    new-array v3, v3, [Ljava/util/BitSet;

    iput-object v3, p0, Landroid/content/XmlDocumentProvider$XMLCursor;->mActiveTextDepthMask:[Ljava/util/BitSet;

    .line 321
    iget v3, p0, Landroid/content/XmlDocumentProvider$XMLCursor;->mNumberOfProjections:I

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/content/XmlDocumentProvider$XMLCursor;->mCurrentValues:[Ljava/lang/String;

    .line 323
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    iget v3, p0, Landroid/content/XmlDocumentProvider$XMLCursor;->mNumberOfProjections:I

    if-ge v1, v3, :cond_65

    .line 324
    iget-object v3, p0, Landroid/content/XmlDocumentProvider$XMLCursor;->mActiveTextDepthMask:[Ljava/util/BitSet;

    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    aput-object v4, v3, v1

    .line 325
    add-int/lit8 v3, v1, 0x1

    aget-object v2, p1, v3

    .line 326
    .local v2, projection:Ljava/lang/String;
    const/16 v3, 0x40

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 327
    .local v0, atIndex:I
    if-ltz v0, :cond_5f

    .line 328
    iget-object v3, p0, Landroid/content/XmlDocumentProvider$XMLCursor;->mAttributeNames:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 329
    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 335
    :goto_47
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_54

    .line 336
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 338
    :cond_54
    iget-object v3, p0, Landroid/content/XmlDocumentProvider$XMLCursor;->mProjectionPatterns:[Ljava/util/regex/Pattern;

    invoke-direct {p0, v2}, Landroid/content/XmlDocumentProvider$XMLCursor;->createPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    aput-object v4, v3, v1

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 331
    :cond_5f
    iget-object v3, p0, Landroid/content/XmlDocumentProvider$XMLCursor;->mAttributeNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    goto :goto_47

    .line 340
    .end local v0           #atIndex:I
    .end local v2           #projection:Ljava/lang/String;
    :cond_65
    return-void
.end method


# virtual methods
.method public parseWith(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 20
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 343
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v11, path:Ljava/lang/StringBuilder;
    new-instance v12, Ljava/util/Stack;

    invoke-direct {v12}, Ljava/util/Stack;-><init>()V

    .line 350
    .local v12, pathLengthStack:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/lang/Integer;>;"
    const/4 v4, -0x1

    .line 353
    .local v4, currentNodeDepth:I
    const/4 v5, 0x0

    .line 355
    .local v5, currentNodePathStartIndex:I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 356
    .local v7, eventType:I
    :goto_10
    const/4 v14, 0x1

    if-eq v7, v14, :cond_15c

    .line 358
    const/4 v14, 0x2

    if-ne v7, v14, :cond_d6

    .line 360
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const/16 v14, 0x2f

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    const/4 v13, 0x0

    .line 365
    .local v13, prefix:Ljava/lang/String;
    :try_start_27
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_2a} :catch_7f

    move-result-object v13

    .line 369
    :goto_2b
    if-eqz v13, :cond_35

    .line 370
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const/16 v14, 0x3a

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    :cond_35
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    if-ltz v4, :cond_82

    .line 376
    add-int/lit8 v4, v4, 0x1

    .line 393
    :cond_40
    if-ltz v4, :cond_f7

    .line 394
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 395
    .local v10, localNodePath:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_47
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/XmlDocumentProvider$XMLCursor;->mNumberOfProjections:I

    move v14, v0

    if-ge v8, v14, :cond_f7

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/XmlDocumentProvider$XMLCursor;->mProjectionPatterns:[Ljava/util/regex/Pattern;

    move-object v14, v0

    aget-object v14, v14, v8

    invoke-virtual {v14, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_7c

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/XmlDocumentProvider$XMLCursor;->mAttributeNames:[Ljava/lang/String;

    move-object v14, v0

    aget-object v3, v14, v8

    .line 398
    .local v3, attribute:Ljava/lang/String;
    if-eqz v3, :cond_ca

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/XmlDocumentProvider$XMLCursor;->mCurrentValues:[Ljava/lang/String;

    move-object v14, v0

    add-int/lit8 v15, v8, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 395
    .end local v3           #attribute:Ljava/lang/String;
    :cond_7c
    :goto_7c
    add-int/lit8 v8, v8, 0x1

    goto :goto_47

    .line 366
    .end local v8           #i:I
    .end local v10           #localNodePath:Ljava/lang/String;
    :catch_7f
    move-exception v6

    .line 367
    .local v6, e:Ljava/lang/RuntimeException;
    const/4 v13, 0x0

    goto :goto_2b

    .line 379
    .end local v6           #e:Ljava/lang/RuntimeException;
    :cond_82
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/XmlDocumentProvider$XMLCursor;->mSelectionPattern:Ljava/util/regex/Pattern;

    move-object v14, v0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_40

    .line 380
    const/4 v4, 0x0

    .line 381
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/XmlDocumentProvider$XMLCursor;->mCurrentValues:[Ljava/lang/String;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/XmlDocumentProvider$XMLCursor;->getCount()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 383
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_ab
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/XmlDocumentProvider$XMLCursor;->mNumberOfProjections:I

    move v14, v0

    if-ge v8, v14, :cond_40

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/XmlDocumentProvider$XMLCursor;->mCurrentValues:[Ljava/lang/String;

    move-object v14, v0

    add-int/lit8 v15, v8, 0x1

    const-string v16, ""

    aput-object v16, v14, v15

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/XmlDocumentProvider$XMLCursor;->mActiveTextDepthMask:[Ljava/util/BitSet;

    move-object v14, v0

    aget-object v14, v14, v8

    invoke-virtual {v14}, Ljava/util/BitSet;->clear()V

    .line 383
    add-int/lit8 v8, v8, 0x1

    goto :goto_ab

    .line 402
    .restart local v3       #attribute:Ljava/lang/String;
    .restart local v10       #localNodePath:Ljava/lang/String;
    :cond_ca
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/XmlDocumentProvider$XMLCursor;->mActiveTextDepthMask:[Ljava/util/BitSet;

    move-object v14, v0

    aget-object v14, v14, v8

    const/4 v15, 0x1

    invoke-virtual {v14, v4, v15}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_7c

    .line 408
    .end local v3           #attribute:Ljava/lang/String;
    .end local v8           #i:I
    .end local v10           #localNodePath:Ljava/lang/String;
    .end local v13           #prefix:Ljava/lang/String;
    :cond_d6
    const/4 v14, 0x3

    if-ne v7, v14, :cond_113

    .line 410
    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 411
    .local v9, length:I
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 413
    if-ltz v4, :cond_f7

    .line 414
    if-nez v4, :cond_fd

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/XmlDocumentProvider$XMLCursor;->mCurrentValues:[Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/XmlDocumentProvider$XMLCursor;->addRow([Ljava/lang/Object;)V

    .line 422
    :cond_f5
    add-int/lit8 v4, v4, -0x1

    .line 434
    .end local v9           #length:I
    :cond_f7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto/16 :goto_10

    .line 418
    .restart local v9       #length:I
    :cond_fd
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_fe
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/XmlDocumentProvider$XMLCursor;->mNumberOfProjections:I

    move v14, v0

    if-ge v8, v14, :cond_f5

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/XmlDocumentProvider$XMLCursor;->mActiveTextDepthMask:[Ljava/util/BitSet;

    move-object v14, v0

    aget-object v14, v14, v8

    const/4 v15, 0x0

    invoke-virtual {v14, v4, v15}, Ljava/util/BitSet;->set(IZ)V

    .line 418
    add-int/lit8 v8, v8, 0x1

    goto :goto_fe

    .line 425
    .end local v8           #i:I
    .end local v9           #length:I
    :cond_113
    const/4 v14, 0x4

    if-ne v7, v14, :cond_f7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v14

    if-nez v14, :cond_f7

    .line 426
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_11d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/XmlDocumentProvider$XMLCursor;->mNumberOfProjections:I

    move v14, v0

    if-ge v8, v14, :cond_f7

    .line 427
    if-ltz v4, :cond_159

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/XmlDocumentProvider$XMLCursor;->mActiveTextDepthMask:[Ljava/util/BitSet;

    move-object v14, v0

    aget-object v14, v14, v8

    invoke-virtual {v14, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_159

    .line 429
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/XmlDocumentProvider$XMLCursor;->mCurrentValues:[Ljava/lang/String;

    move-object v15, v0

    add-int/lit8 v16, v8, 0x1

    aget-object v17, v15, v16

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v16

    .line 426
    :cond_159
    add-int/lit8 v8, v8, 0x1

    goto :goto_11d

    .line 436
    .end local v8           #i:I
    :cond_15c
    return-void
.end method
