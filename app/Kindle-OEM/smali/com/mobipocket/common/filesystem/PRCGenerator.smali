.class public Lcom/mobipocket/common/filesystem/PRCGenerator;
.super Ljava/lang/Object;
.source "PRCGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/filesystem/PRCGenerator$1;,
        Lcom/mobipocket/common/filesystem/PRCGenerator$AnchorEntry;,
        Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;
    }
.end annotation


# static fields
.field private static final BOOKTYPE_BOOK:I = 0x2

.field private static final BOOKTYPE_NEWS:I = 0x101

.field private static final INTEGER_SIZE:I = 0x4

.field private static final RECORD_SIZE:I = 0x1000

.field private static final SHORT_SIZE:I = 0x2

.field private static privVerboseMode:Z


# instance fields
.field private _anchors:Ljava/util/Vector;

.field private _blocCount:I

.field private _embedBasePositionInHeader:I

.field private _header:[B

.field private _html:Ljava/lang/String;

.field private _htmlBytePos:I

.field private _htmlBytes:[B

.field private _htmlStringBuffer:Ljava/lang/StringBuffer;

.field private _images:Ljava/util/Vector;

.field private _rwPdb:Lcom/mobipocket/common/filesystem/ReadWritePDB;

.field private pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->privVerboseMode:Z

    return-void
.end method

.method public constructor <init>(Lcom/mobipocket/common/filesystem/PDBFactory;)V
    .locals 3
    .parameter "pPdbFactory"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_rwPdb:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    .line 254
    iput-object v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlStringBuffer:Ljava/lang/StringBuffer;

    .line 258
    iput-object v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_html:Ljava/lang/String;

    .line 262
    iput-object v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlBytes:[B

    .line 266
    iput v2, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlBytePos:I

    .line 270
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_images:Ljava/util/Vector;

    .line 274
    iput-object v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    .line 278
    iput v2, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_blocCount:I

    .line 282
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_anchors:Ljava/util/Vector;

    .line 315
    iput v2, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_embedBasePositionInHeader:I

    .line 182
    iput-object p1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    .line 183
    return-void
.end method

.method private finalUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 664
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    iget v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_embedBasePositionInHeader:I

    iget v2, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_blocCount:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    .line 665
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_rwPdb:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    iget-object v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    invoke-virtual {v0, v1, v3}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->modifyRecord([BI)V

    move v1, v3

    .line 668
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_images:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_images:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;

    .line 671
    iget-object v2, v0, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;->ressourceName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 673
    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;->ressourceName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mobipocket/common/filesystem/PRCGenerator;->getRessourceImage(Ljava/lang/String;)[B

    move-result-object v0

    .line 674
    iget-object v2, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_rwPdb:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v2, v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->addRecord([B)I

    .line 668
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 678
    :cond_0
    iget-object v2, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_rwPdb:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;->bytes:[B

    invoke-virtual {v2, v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->addRecord([B)I

    goto :goto_1

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_rwPdb:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->save()Z

    .line 682
    return-void
.end method

.method private getRessourceImage(Ljava/lang/String;)[B
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 194
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    const/4 v2, 0x1

    new-array v2, v2, [C

    .line 198
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 200
    const/4 v4, 0x0

    int-to-char v3, v3

    aput-char v3, v2, v4

    .line 201
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RssPrcGenerator.getRessourceImage: Failed reading ressource image "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 205
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    new-array v2, v2, [B

    move v3, v5

    .line 206
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 208
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 210
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    .line 211
    goto :goto_1
.end method

.method protected static isVerboseEnabled()Z
    .locals 1

    .prologue
    .line 159
    sget-boolean v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->privVerboseMode:Z

    return v0
.end method

.method protected static setVerboseMode()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->privVerboseMode:Z

    .line 169
    return-void
.end method

.method private unicodeLength(B)I
    .locals 1
    .parameter "pByte"

    .prologue
    .line 644
    const/4 v0, 0x0

    return v0
.end method

.method private writeHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 46
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 421
    const/4 v4, 0x0

    move v6, v4

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_images:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v6, v4, :cond_3

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_images:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;

    .line 424
    iget-object v5, v4, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;->ressourceName:Ljava/lang/String;

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;->bytes:[B

    if-nez v5, :cond_0

    .line 426
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Image not set (addImage not called)"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 428
    :cond_0
    const/4 v5, 0x0

    move v7, v5

    :goto_1
    iget-object v5, v4, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;->positionsInHtml:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v7, v5, :cond_2

    .line 430
    iget-object v5, v4, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;->positionsInHtml:Ljava/util/Vector;

    invoke-virtual {v5, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 431
    add-int/lit8 v8, v6, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 432
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlStringBuffer:Ljava/lang/StringBuffer;

    move-object v10, v0

    add-int/lit8 v11, v5, 0xa

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    add-int/2addr v11, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 432
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 428
    :cond_1
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_1

    .line 421
    :cond_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 440
    :cond_3
    const/4 v4, 0x0

    move v6, v4

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_anchors:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v6, v4, :cond_7

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_anchors:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mobipocket/common/filesystem/PRCGenerator$AnchorEntry;

    .line 443
    iget v5, v4, Lcom/mobipocket/common/filesystem/PRCGenerator$AnchorEntry;->position:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_4

    .line 445
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Anchor location not set (appendAnchorLocation not called)"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 447
    :cond_4
    const/4 v5, 0x0

    move v7, v5

    :goto_4
    iget-object v5, v4, Lcom/mobipocket/common/filesystem/PRCGenerator$AnchorEntry;->positionsInHtml:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v7, v5, :cond_6

    .line 449
    iget-object v5, v4, Lcom/mobipocket/common/filesystem/PRCGenerator$AnchorEntry;->positionsInHtml:Ljava/util/Vector;

    invoke-virtual {v5, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 450
    iget v8, v4, Lcom/mobipocket/common/filesystem/PRCGenerator$AnchorEntry;->position:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 451
    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlStringBuffer:Ljava/lang/StringBuffer;

    move-object v10, v0

    add-int/lit8 v11, v5, 0xa

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    add-int/2addr v11, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 451
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 447
    :cond_5
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_4

    .line 440
    :cond_6
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_3

    .line 459
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlStringBuffer:Ljava/lang/StringBuffer;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobipocket/common/filesystem/PRCGenerator;->_html:Ljava/lang/String;

    .line 460
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlStringBuffer:Ljava/lang/StringBuffer;

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_html:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    .line 464
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_html:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_6
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobipocket/common/filesystem/PRCGenerator;->_html:Ljava/lang/String;

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/mobipocket/common/filesystem/PDBFactory;->deletePDB(Ljava/lang/String;)Z

    .line 471
    const/4 v4, 0x0

    const/16 v5, 0x1b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, p2

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3a

    const/16 v6, 0x5f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 473
    new-instance v4, Lcom/mobipocket/common/filesystem/ReadWritePDB;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    move-object v5, v0

    const-string v8, "BOOK"

    const/4 v9, 0x0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/mobipocket/common/filesystem/ReadWritePDB;-><init>(Lcom/mobipocket/common/filesystem/PDBFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobipocket/common/filesystem/RecordComparator;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobipocket/common/filesystem/PRCGenerator;->_rwPdb:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlBytes:[B

    move-object v4, v0

    array-length v4, v4

    .line 481
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit16 v5, v5, 0xe0

    .line 483
    const/4 v6, 0x1

    .line 485
    div-int/lit16 v7, v4, 0x1000

    int-to-short v7, v7

    .line 486
    mul-int/lit16 v8, v7, 0x1000

    sub-int v8, v4, v8

    if-lez v8, :cond_8

    add-int/lit8 v7, v7, 0x1

    int-to-short v7, v7

    .line 487
    :cond_8
    const/16 v8, 0x1000

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-short v4, v4

    .line 488
    const/4 v8, 0x0

    .line 490
    const v9, 0x4d4f4249

    .line 492
    const/4 v11, 0x2

    .line 493
    const v12, 0xfde9

    .line 494
    const/4 v13, 0x1

    .line 495
    const/4 v14, 0x4

    .line 497
    const/4 v15, -0x1

    .line 498
    const/16 v16, -0x1

    .line 499
    const/16 v17, -0x1

    .line 500
    const/16 v18, -0x1

    .line 501
    const/16 v19, -0x1

    .line 502
    const/16 v20, -0x1

    .line 503
    const/16 v21, -0x1

    .line 504
    const/16 v22, -0x1

    .line 505
    const/16 v23, -0x1

    .line 506
    const/16 v24, -0x1

    .line 508
    const/16 v25, -0x1

    .line 509
    const/16 v26, 0xe0

    .line 510
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v27

    .line 511
    const/16 v28, 0x0

    .line 512
    const/16 v29, 0x0

    .line 513
    const/16 v30, 0x0

    .line 514
    const/16 v31, 0x1

    .line 516
    const/16 v32, 0x0

    .line 517
    const/16 v33, 0x0

    .line 518
    const/16 v34, 0x0

    .line 519
    const/16 v35, 0x0

    .line 520
    const/16 v36, 0x0

    .line 521
    const/16 v37, 0x0

    .line 524
    const-string v38, ""

    .line 525
    const/16 v39, -0x1

    .line 526
    const/16 v40, 0x0

    .line 527
    const/16 v41, 0x0

    .line 528
    const/16 v42, 0x0

    .line 529
    const/16 v43, 0x0

    .line 533
    const/16 v44, 0x0

    .line 535
    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v44

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedShort([BIS)V

    add-int/lit8 v6, v44, 0x2

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move v2, v6

    move/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedShort([BIS)V

    add-int/lit8 v6, v6, 0x2

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move v2, v6

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v6, v6, 0x4

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v10, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedShort([BIS)V

    add-int/lit8 v6, v6, 0x2

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v7, v0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v6

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedShort([BIS)V

    add-int/lit8 v4, v6, 0x2

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v4

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedShort([BIS)V

    add-int/lit8 v4, v4, 0x2

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v4

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedShort([BIS)V

    add-int/lit8 v4, v4, 0x2

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v4

    move v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v4

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobipocket/common/filesystem/PRCGenerator;->_embedBasePositionInHeader:I

    add-int/lit8 v4, v4, 0x4

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 584
    const/4 v5, 0x0

    :goto_7
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v6, v0

    add-int/lit16 v7, v5, 0x84

    move-object/from16 v0, v38

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 584
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 587
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit16 v6, v6, 0x84

    const/4 v7, 0x0

    aput-byte v7, v5, v6

    .line 588
    add-int/lit8 v4, v4, 0x20

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeSwappedInteger([BII)V

    add-int/lit8 v4, v4, 0x4

    .line 607
    const/4 v4, 0x0

    :goto_8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    add-int/lit16 v6, v4, 0xe0

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 607
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 610
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_rwPdb:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->addRecord([B)I

    .line 611
    return-void

    :catch_0
    move-exception v4

    goto/16 :goto_6
.end method

.method private writeHtml()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 616
    .line 617
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlBytes:[B

    array-length v0, v0

    .line 618
    iput v6, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_blocCount:I

    move v1, v6

    .line 619
    :goto_0
    if-ge v1, v0, :cond_2

    .line 621
    const/16 v2, 0x1000

    sub-int v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 625
    const/4 v3, -0x1

    move v4, v6

    move v5, v6

    .line 626
    :goto_1
    if-nez v5, :cond_1

    const/4 v5, 0x6

    if-ge v4, v5, :cond_1

    .line 628
    iget-object v3, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlBytes:[B

    add-int v5, v1, v2

    sub-int/2addr v5, v7

    sub-int/2addr v5, v4

    aget-byte v3, v3, v5

    invoke-direct {p0, v3}, Lcom/mobipocket/common/filesystem/PRCGenerator;->unicodeLength(B)I

    move-result v3

    .line 629
    if-eqz v3, :cond_0

    move v5, v7

    .line 630
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move v5, v6

    .line 629
    goto :goto_2

    .line 632
    :cond_1
    add-int/2addr v3, v2

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    .line 633
    new-array v4, v3, [B

    .line 634
    sub-int v5, v3, v7

    aput-byte v6, v4, v5

    .line 635
    iget-object v5, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlBytes:[B

    sub-int/2addr v3, v7

    invoke-static {v5, v1, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 636
    iget-object v3, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_rwPdb:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v3, v4}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->addRecord([B)I

    .line 637
    add-int/2addr v1, v2

    .line 638
    iget v2, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_blocCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_blocCount:I

    goto :goto_0

    .line 640
    :cond_2
    return-void
.end method

.method private writeSwappedInteger([BII)V
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 241
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p3, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 242
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 243
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 244
    add-int/lit8 v0, p2, 0x0

    shr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 245
    return-void
.end method

.method private writeSwappedShort([BIS)V
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 228
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 229
    add-int/lit8 v0, p2, 0x0

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 230
    return-void
.end method


# virtual methods
.method public addImage(Ljava/lang/String;)I
    .locals 3
    .parameter "pRessourceName"

    .prologue
    .line 326
    new-instance v0, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;-><init>(Lcom/mobipocket/common/filesystem/PRCGenerator;Lcom/mobipocket/common/filesystem/PRCGenerator$1;)V

    .line 327
    .local v0, ie:Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;
    iput-object p1, v0, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;->ressourceName:Ljava/lang/String;

    .line 328
    iget-object v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_images:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 329
    iget-object v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_images:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    return v1
.end method

.method public addImage([B)I
    .locals 3
    .parameter "pImageBytes"

    .prologue
    .line 341
    new-instance v0, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;-><init>(Lcom/mobipocket/common/filesystem/PRCGenerator;Lcom/mobipocket/common/filesystem/PRCGenerator$1;)V

    .line 342
    .local v0, ie:Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;
    iput-object p1, v0, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;->bytes:[B

    .line 343
    iget-object v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_images:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 344
    iget-object v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_images:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    return v1
.end method

.method public appendAnchorLink(I)V
    .locals 4
    .parameter "pAnchorID"

    .prologue
    .line 401
    iget-object v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_anchors:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/filesystem/PRCGenerator$AnchorEntry;

    .line 402
    .local v0, ae:Lcom/mobipocket/common/filesystem/PRCGenerator$AnchorEntry;
    iget-object v1, v0, Lcom/mobipocket/common/filesystem/PRCGenerator$AnchorEntry;->positionsInHtml:Ljava/util/Vector;

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 403
    const-string v1, "<A FILEPOS=\"0000000000\">"

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/filesystem/PRCGenerator;->appendHtml(Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public appendAnchorLocation(I)V
    .locals 2
    .parameter "pAnchorID"

    .prologue
    .line 414
    iget-object v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_anchors:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/filesystem/PRCGenerator$AnchorEntry;

    .line 415
    .local v0, ae:Lcom/mobipocket/common/filesystem/PRCGenerator$AnchorEntry;
    iget v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlBytePos:I

    iput v1, v0, Lcom/mobipocket/common/filesystem/PRCGenerator$AnchorEntry;->position:I

    .line 416
    return-void
.end method

.method public appendHtml(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlStringBuffer:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlStringBuffer:Ljava/lang/StringBuffer;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    :try_start_0
    iget v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlBytePos:I

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlBytePos:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public appendImage(I)V
    .locals 4
    .parameter "pImageID"

    .prologue
    .line 387
    iget-object v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_images:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;

    .line 388
    .local v0, ie:Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;
    iget-object v1, v0, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;->positionsInHtml:Ljava/util/Vector;

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 389
    const-string v1, "<img recindex=\"0000000000\" >"

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/filesystem/PRCGenerator;->appendHtml(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public getNewAnchor()I
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_anchors:Ljava/util/Vector;

    new-instance v1, Lcom/mobipocket/common/filesystem/PRCGenerator$AnchorEntry;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mobipocket/common/filesystem/PRCGenerator$AnchorEntry;-><init>(Lcom/mobipocket/common/filesystem/PRCGenerator;Lcom/mobipocket/common/filesystem/PRCGenerator$1;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 356
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_anchors:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 291
    iput-object v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_rwPdb:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    .line 292
    iput-object v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlStringBuffer:Ljava/lang/StringBuffer;

    .line 293
    iput-object v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_html:Ljava/lang/String;

    .line 294
    iput-object v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlBytes:[B

    .line 295
    iput v2, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_htmlBytePos:I

    .line 296
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_images:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 297
    iput-object v1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_header:[B

    .line 298
    iput v2, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_blocCount:I

    .line 299
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator;->_anchors:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 300
    return-void
.end method

.method public writePRC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "pBookFileName"
    .parameter "pName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 656
    invoke-direct {p0, p1, p2}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-direct {p0}, Lcom/mobipocket/common/filesystem/PRCGenerator;->writeHtml()V

    .line 658
    invoke-direct {p0}, Lcom/mobipocket/common/filesystem/PRCGenerator;->finalUpdate()V

    .line 659
    return-void
.end method
