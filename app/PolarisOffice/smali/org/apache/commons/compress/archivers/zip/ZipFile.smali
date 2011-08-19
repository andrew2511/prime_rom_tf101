.class public Lorg/apache/commons/compress/archivers/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    }
.end annotation


# static fields
.field static final BYTE_SHIFT:I = 0x8

.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field private static final CFH_LEN:I = 0x2a

.field private static final HASH_SIZE:I = 0x1fd

.field private static final LFH_OFFSET_FOR_FILENAME_LENGTH:J = 0x1aL

.field private static final MAX_EOCD_SIZE:I = 0x10015

.field private static final MIN_EOCD_SIZE:I = 0x16

.field static final NIBLET_MASK:I = 0xf

.field private static final POS_0:I = 0x0

.field private static final POS_1:I = 0x1

.field private static final POS_2:I = 0x2

.field private static final POS_3:I = 0x3

.field private static final SHORT:I = 0x2

.field private static final WORD:I = 0x4


# instance fields
.field private final OFFSET_COMPARATOR:Ljava/util/Comparator;

.field private final archive:Ljava/io/RandomAccessFile;

.field private final encoding:Ljava/lang/String;

.field private final entries:Ljava/util/Map;

.field private final nameMap:Ljava/util/Map;

.field private final useUnicodeExtraFields:Z

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const-string v0, "UTF8"

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .parameter "f"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 4
    .parameter "f"
    .parameter "encoding"
    .parameter "useUnicodeExtraFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1fd

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/Map;

    .line 83
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    .line 678
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;

    invoke-direct {v2, p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    .line 178
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->encoding:Ljava/lang/String;

    .line 179
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 180
    iput-boolean p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->useUnicodeExtraFields:Z

    .line 181
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    .line 182
    const/4 v1, 0x0

    .line 184
    .local v1, success:Z
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->populateFromCentralDirectory()Ljava/util/Map;

    move-result-object v0

    .line 185
    .local v0, entriesWithoutUTF8Flag:Ljava/util/Map;
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->resolveLocalFileHeaderData(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    const/4 v1, 0x1

    .line 188
    if-nez v1, :cond_0

    .line 190
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 188
    .end local v0           #entriesWithoutUTF8Flag:Ljava/util/Map;
    :catchall_0
    move-exception v2

    if-nez v1, :cond_1

    .line 190
    :try_start_2
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    :cond_1
    :goto_1
    throw v2

    .line 191
    :catch_0
    move-exception v3

    goto :goto_1

    .restart local v0       #entriesWithoutUTF8Flag:Ljava/util/Map;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "UTF8"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 148
    return-void
.end method

.method static access$600(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/io/RandomAccessFile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static access$700(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/Map;

    return-object v0
.end method

.method public static closeQuietly(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .locals 1
    .parameter "zipfile"

    .prologue
    .line 221
    if-eqz p0, :cond_0

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private populateFromCentralDirectory()Ljava/util/Map;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 344
    .local v16, noUTF8Flag:Ljava/util/HashMap;
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtCentralDirectory()V

    .line 346
    const/16 v26, 0x2a

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object v5, v0

    .line 348
    .local v5, cfh:[B
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 349
    .local v21, signatureBytes:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 350
    invoke-static/range {v21 .. v21}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v19

    .line 351
    .local v19, sig:J
    sget-object v26, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->CFH_SIG:[B

    invoke-static/range {v26 .. v26}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v6

    .line 352
    .local v6, cfhSig:J
    cmp-long v26, v19, v6

    if-eqz v26, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->startsWithLocalFileHeader()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 353
    new-instance v26, Ljava/io/IOException;

    const-string v27, "central directory is empty, can\'t expand corrupt archive."

    invoke-direct/range {v26 .. v27}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 356
    :cond_0
    :goto_0
    cmp-long v26, v19, v6

    if-nez v26, :cond_2

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 358
    const/16 v17, 0x0

    .line 359
    .local v17, off:I
    new-instance v25, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-direct/range {v25 .. v25}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>()V

    .line 361
    .local v25, ze:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    move-object v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v24

    .line 362
    .local v24, versionMadeBy:I
    add-int/lit8 v17, v17, 0x2

    .line 363
    shr-int/lit8 v26, v24, 0x8

    and-int/lit8 v26, v26, 0xf

    invoke-virtual/range {v25 .. v26}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setPlatform(I)V

    .line 365
    add-int/lit8 v17, v17, 0x2

    .line 367
    move-object v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->parse([BI)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v14

    .line 368
    .local v14, gpFlag:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    invoke-virtual {v14}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesUTF8ForNames()Z

    move-result v15

    .line 369
    .local v15, hasUTF8Flag:Z
    if-eqz v15, :cond_1

    sget-object v26, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-object/from16 v10, v26

    .line 371
    .local v10, entryEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    :goto_1
    move-object/from16 v0, v25

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;)V

    .line 373
    add-int/lit8 v17, v17, 0x2

    .line 375
    move-object v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setMethod(I)V

    .line 376
    add-int/lit8 v17, v17, 0x2

    .line 381
    move-object v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v22

    .line 382
    .local v22, time:J
    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setTime(J)V

    .line 383
    add-int/lit8 v17, v17, 0x4

    .line 385
    move-object v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCrc(J)V

    .line 386
    add-int/lit8 v17, v17, 0x4

    .line 388
    move-object v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 389
    add-int/lit8 v17, v17, 0x4

    .line 391
    move-object v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 392
    add-int/lit8 v17, v17, 0x4

    .line 394
    move-object v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v13

    .line 395
    .local v13, fileNameLen:I
    add-int/lit8 v17, v17, 0x2

    .line 397
    move-object v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v11

    .line 398
    .local v11, extraLen:I
    add-int/lit8 v17, v17, 0x2

    .line 400
    move-object v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v9

    .line 401
    .local v9, commentLen:I
    add-int/lit8 v17, v17, 0x2

    .line 403
    add-int/lit8 v17, v17, 0x2

    .line 405
    move-object v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setInternalAttributes(I)V

    .line 406
    add-int/lit8 v17, v17, 0x2

    .line 408
    move-object v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExternalAttributes(J)V

    .line 409
    add-int/lit8 v17, v17, 0x4

    .line 411
    new-array v12, v13, [B

    .line 412
    .local v12, fileName:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 413
    invoke-interface {v10, v12}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;)V

    .line 416
    new-instance v18, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile$1;)V

    .line 417
    .local v18, offset:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    move-object v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v26

    move-object/from16 v0, v18

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$202(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;J)J

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    new-array v4, v11, [B

    .line 424
    .local v4, cdExtraData:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 425
    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCentralDirectoryExtra([B)V

    .line 427
    new-array v8, v9, [B

    .line 428
    .local v8, comment:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 429
    invoke-interface {v10, v8}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setComment(Ljava/lang/String;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 432
    invoke-static/range {v21 .. v21}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v19

    .line 434
    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->useUnicodeExtraFields:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 435
    new-instance v26, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object v1, v12

    move-object v2, v8

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;-><init>([B[BLorg/apache/commons/compress/archivers/zip/ZipFile$1;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 369
    .end local v4           #cdExtraData:[B
    .end local v8           #comment:[B
    .end local v9           #commentLen:I
    .end local v10           #entryEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .end local v11           #extraLen:I
    .end local v12           #fileName:[B
    .end local v13           #fileNameLen:I
    .end local v18           #offset:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    .end local v22           #time:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-object/from16 v26, v0

    move-object/from16 v10, v26

    goto/16 :goto_1

    .line 438
    .end local v14           #gpFlag:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    .end local v15           #hasUTF8Flag:Z
    .end local v17           #off:I
    .end local v24           #versionMadeBy:I
    .end local v25           #ze:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_2
    return-object v16
.end method

.method private positionAtCentralDirectory()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    .line 477
    const/4 v2, 0x0

    .line 478
    .local v2, found:Z
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x16

    sub-long v3, v8, v10

    .line 479
    .local v3, off:J
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x10015

    sub-long/2addr v8, v10

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 480
    .local v6, stopSearching:J
    cmp-long v8, v3, v12

    if-ltz v8, :cond_0

    .line 481
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 482
    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    .line 483
    .local v5, sig:[B
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 484
    .local v1, curr:I
    :goto_0
    cmp-long v8, v3, v6

    if-ltz v8, :cond_0

    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    .line 485
    const/4 v8, 0x0

    aget-byte v8, v5, v8

    if-ne v1, v8, :cond_1

    .line 486
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 487
    const/4 v8, 0x1

    aget-byte v8, v5, v8

    if-ne v1, v8, :cond_1

    .line 488
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 489
    const/4 v8, 0x2

    aget-byte v8, v5, v8

    if-ne v1, v8, :cond_1

    .line 490
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 491
    const/4 v8, 0x3

    aget-byte v8, v5, v8

    if-ne v1, v8, :cond_1

    .line 492
    const/4 v2, 0x1

    .line 502
    .end local v1           #curr:I
    .end local v5           #sig:[B
    :cond_0
    if-nez v2, :cond_2

    .line 503
    new-instance v8, Ljava/util/zip/ZipException;

    const-string v9, "archive is not a ZIP archive"

    invoke-direct {v8, v9}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 498
    .restart local v1       #curr:I
    .restart local v5       #sig:[B
    :cond_1
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v9, 0x1

    sub-long/2addr v3, v9

    invoke-virtual {v8, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 499
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    goto :goto_0

    .line 505
    .end local v1           #curr:I
    .end local v5           #sig:[B
    :cond_2
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v9, 0x10

    add-long/2addr v9, v3

    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 506
    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 507
    .local v0, cfdOffset:[B
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 508
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 509
    return-void
.end method

.method private resolveLocalFileHeaderData(Ljava/util/Map;)V
    .locals 20
    .parameter "entriesWithoutUTF8Flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v4

    .line 536
    .local v4, e:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 537
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 538
    .local v15, ze:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    .line 539
    .local v12, offsetEntry:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    invoke-static {v12}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v10

    .line 540
    .local v10, offset:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v16, v0

    const-wide/16 v17, 0x1a

    add-long v17, v17, v10

    invoke-virtual/range {v16 .. v18}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 541
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v3, v0

    .line 542
    .local v3, b:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 543
    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([B)I

    move-result v6

    .line 544
    .local v6, fileNameLen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 545
    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([B)I

    move-result v5

    .line 546
    .local v5, extraFieldLen:I
    move v7, v6

    .line 547
    .local v7, lenToSkip:I
    :goto_1
    if-lez v7, :cond_2

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v14

    .line 549
    .local v14, skipped:I
    if-gtz v14, :cond_1

    .line 550
    new-instance v16, Ljava/lang/RuntimeException;

    const-string v17, "failed to skip file name in local file header"

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 553
    :cond_1
    sub-int/2addr v7, v14

    .line 554
    goto :goto_1

    .line 555
    .end local v14           #skipped:I
    :cond_2
    new-array v8, v5, [B

    .line 556
    .local v8, localExtraData:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 557
    invoke-virtual {v15, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra([B)V

    .line 562
    const-wide/16 v16, 0x1a

    add-long v16, v16, v10

    const-wide/16 v18, 0x2

    add-long v16, v16, v18

    const-wide/16 v18, 0x2

    add-long v16, v16, v18

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-object v0, v12

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$002(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;J)J

    .line 565
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 566
    invoke-virtual {v15}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v13

    .line 567
    .local v13, orig:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;

    .line 568
    .local v9, nc:Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;
    invoke-static {v9}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->access$400(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B

    move-result-object v16

    invoke-static {v9}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->access$500(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->setNameAndCommentFromExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;[B[B)V

    .line 570
    invoke-virtual {v15}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v16

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-virtual {v15}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v15

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 576
    .end local v3           #b:[B
    .end local v5           #extraFieldLen:I
    .end local v6           #fileNameLen:I
    .end local v7           #lenToSkip:I
    .end local v8           #localExtraData:[B
    .end local v9           #nc:Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;
    .end local v10           #offset:J
    .end local v12           #offsetEntry:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    .end local v13           #orig:Ljava/lang/String;
    .end local v15           #ze:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_3
    return-void
.end method

.method private startsWithLocalFileHeader()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 584
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 585
    .local v1, start:[B
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 586
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 587
    aget-byte v2, v1, v0

    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_0

    .line 588
    const/4 v2, 0x0

    .line 591
    :goto_1
    return v2

    .line 586
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 591
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 1
    .parameter "ze"

    .prologue
    .line 277
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 213
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEntriesInPhysicalOrder()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 253
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 254
    .local v0, allEntries:[Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 255
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 1
    .parameter "name"

    .prologue
    .line 266
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    return-object p0
.end method

.method public getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;
    .locals 7
    .parameter "ze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    .line 291
    .local v6, offsetEntry:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    if-nez v6, :cond_0

    .line 292
    const/4 v1, 0x0

    .line 303
    :goto_0
    return-object v1

    .line 294
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 295
    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$000(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v2

    .line 296
    .local v2, start:J
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;JJ)V

    .line 298
    .local v0, bis:Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 305
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Found unsupported compression method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    move-object v1, v0

    .line 300
    goto :goto_0

    .line 302
    :sswitch_1
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->addDummy()V

    .line 303
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    new-instance v4, Ljava/util/zip/Inflater;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v1, v0, v4}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    goto :goto_0

    .line 298
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
