.class public Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "ZipArchiveInputStream.java"


# static fields
.field private static final LFH_LEN:I = 0x1e

.field private static final SHORT:I = 0x2

.field private static final WORD:I = 0x4


# instance fields
.field private allowStoredEntriesWithDataDescriptor:Z

.field private final buf:[B

.field private bytesReadFromStream:I

.field private closed:Z

.field private final crc:Ljava/util/zip/CRC32;

.field private current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

.field private hasDataDescriptor:Z

.field private hitCentralDirectory:Z

.field private final in:Ljava/io/InputStream;

.field private final inf:Ljava/util/zip/Inflater;

.field private lastStoredEntry:Ljava/io/ByteArrayInputStream;

.field private lengthOfLastRead:I

.field private offsetInBuffer:I

.field private readBytesOfEntry:I

.field private final useUnicodeExtraFields:Z

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "inputStream"

    .prologue
    .line 95
    const-string v0, "UTF8"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .locals 1
    .parameter "inputStream"
    .parameter "encoding"
    .parameter "useUnicodeExtraFields"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;ZZ)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;ZZ)V
    .locals 4
    .parameter "inputStream"
    .parameter "encoding"
    .parameter "useUnicodeExtraFields"
    .parameter "allowStoredEntriesWithDataDescriptor"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 122
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    .line 63
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    .line 64
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->crc:Ljava/util/zip/CRC32;

    .line 66
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    .line 68
    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 69
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    .line 70
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->hitCentralDirectory:Z

    .line 71
    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readBytesOfEntry:I

    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->offsetInBuffer:I

    .line 72
    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->bytesReadFromStream:I

    .line 73
    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lengthOfLastRead:I

    .line 74
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->hasDataDescriptor:Z

    .line 75
    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    .line 77
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->allowStoredEntriesWithDataDescriptor:Z

    .line 123
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 124
    iput-boolean p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->useUnicodeExtraFields:Z

    .line 125
    new-instance v0, Ljava/io/PushbackInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    array-length v1, v1

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    .line 126
    iput-boolean p4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->allowStoredEntriesWithDataDescriptor:Z

    .line 128
    return-void
.end method

.method private static checksig([B[B)Z
    .locals 3
    .parameter "signature"
    .parameter "expected"

    .prologue
    .line 354
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 355
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 356
    const/4 v1, 0x0

    .line 359
    :goto_1
    return v1

    .line 354
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private closeEntry()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 381
    iget-boolean v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    if-eqz v6, :cond_0

    .line 382
    new-instance v6, Ljava/io/IOException;

    const-string v7, "The stream is closed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 384
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    if-nez v6, :cond_1

    .line 431
    :goto_0
    return-void

    .line 389
    :cond_1
    iget v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->bytesReadFromStream:I

    int-to-long v6, v6

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3

    iget-boolean v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->hasDataDescriptor:Z

    if-nez v6, :cond_3

    .line 391
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v6

    iget v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->bytesReadFromStream:I

    int-to-long v8, v8

    sub-long v4, v6, v8

    .line 392
    .local v4, remaining:J
    :goto_1
    cmp-long v6, v4, v12

    if-lez v6, :cond_4

    .line 393
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    array-length v8, v8

    int-to-long v8, v8

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v6, v7, v10, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    int-to-long v2, v6

    .line 394
    .local v2, n:J
    cmp-long v6, v2, v12

    if-gez v6, :cond_2

    .line 395
    new-instance v6, Ljava/io/EOFException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Truncated ZIP entry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 398
    :cond_2
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->count(J)V

    .line 399
    sub-long/2addr v4, v2

    .line 401
    goto :goto_1

    .line 403
    .end local v2           #n:J
    .end local v4           #remaining:J
    :cond_3
    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->skip(J)J

    .line 406
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_6

    .line 407
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v6}, Ljava/util/zip/Inflater;->getTotalIn()I

    move-result v1

    .line 411
    .local v1, inB:I
    :goto_2
    const/4 v0, 0x0

    .line 414
    .local v0, diff:I
    iget v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->bytesReadFromStream:I

    sub-int v0, v6, v1

    if-eqz v0, :cond_4

    .line 415
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    check-cast v6, Ljava/io/PushbackInputStream;

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    iget v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lengthOfLastRead:I

    sub-int/2addr v8, v0

    invoke-virtual {v6, v7, v8, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 417
    int-to-long v6, v0

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->pushedBackBytes(J)V

    .line 421
    .end local v0           #diff:I
    .end local v1           #inB:I
    :cond_4
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->hasDataDescriptor:Z

    if-eqz v6, :cond_5

    .line 422
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readDataDescriptor()V

    .line 425
    :cond_5
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v6}, Ljava/util/zip/Inflater;->reset()V

    .line 426
    iput v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lengthOfLastRead:I

    iput v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->bytesReadFromStream:I

    iput v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->offsetInBuffer:I

    iput v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readBytesOfEntry:I

    .line 428
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v6}, Ljava/util/zip/CRC32;->reset()V

    .line 429
    iput-object v11, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 430
    iput-object v11, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    goto/16 :goto_0

    .line 409
    :cond_6
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readBytesOfEntry:I

    .restart local v1       #inB:I
    goto :goto_2
.end method

.method private fill()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 435
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lengthOfLastRead:I

    if-lez v0, :cond_1

    .line 438
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lengthOfLastRead:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->count(I)V

    .line 439
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lengthOfLastRead:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 441
    :cond_1
    return-void
.end method

.method public static matches([BI)Z
    .locals 2
    .parameter "signature"
    .parameter "length"

    .prologue
    const/4 v1, 0x0

    .line 345
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    move v0, v1

    .line 349
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->checksig([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->checksig([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private readDataDescriptor()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 456
    .local v0, b:[B
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 457
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    .line 458
    .local v1, val:Lorg/apache/commons/compress/archivers/zip/ZipLong;
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipLong;->DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 461
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .end local v1           #val:Lorg/apache/commons/compress/archivers/zip/ZipLong;
    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    .line 463
    .restart local v1       #val:Lorg/apache/commons/compress/archivers/zip/ZipLong;
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCrc(J)V

    .line 464
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 465
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-direct {v3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 466
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 467
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-direct {v3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 468
    return-void
.end method

.method private readFully([B)V
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    const/4 v0, 0x0

    .local v0, count:I
    const/4 v1, 0x0

    .line 445
    .local v1, x:I
    :goto_0
    array-length v2, p1

    if-eq v0, v2, :cond_1

    .line 446
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-virtual {v2, p1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    add-int/2addr v0, v1

    .line 447
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 448
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 450
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->count(I)V

    goto :goto_0

    .line 452
    :cond_1
    return-void
.end method

.method private readStoredEntry()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 502
    .local v4, bos:Ljava/io/ByteArrayOutputStream;
    sget-object v10, Lorg/apache/commons/compress/archivers/zip/ZipLong;->LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v10}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v2

    .line 503
    .local v2, LFH:[B
    sget-object v10, Lorg/apache/commons/compress/archivers/zip/ZipLong;->CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v10}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    .line 504
    .local v0, CFH:[B
    sget-object v10, Lorg/apache/commons/compress/archivers/zip/ZipLong;->DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v10}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v1

    .line 505
    .local v1, DD:[B
    const/4 v7, 0x0

    .line 506
    .local v7, off:I
    const/4 v5, 0x0

    .line 508
    .local v5, done:Z
    :cond_0
    :goto_0
    if-nez v5, :cond_a

    .line 509
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v11, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    const/16 v12, 0x200

    sub-int/2addr v12, v7

    invoke-virtual {v10, v11, v7, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 510
    .local v8, r:I
    if-gtz v8, :cond_1

    .line 513
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Truncated ZIP file"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 515
    :cond_1
    add-int v10, v8, v7

    const/4 v11, 0x4

    if-ge v10, v11, :cond_2

    .line 517
    add-int/2addr v7, v8

    .line 518
    goto :goto_0

    .line 521
    :cond_2
    const/4 v9, 0x0

    .line 522
    .local v9, readTooMuch:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-nez v5, :cond_8

    const/4 v10, 0x4

    sub-int v10, v8, v10

    if-ge v6, v10, :cond_8

    .line 523
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    aget-byte v10, v10, v6

    const/4 v11, 0x0

    aget-byte v11, v2, v11

    if-ne v10, v11, :cond_6

    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    add-int/lit8 v11, v6, 0x1

    aget-byte v10, v10, v11

    const/4 v11, 0x1

    aget-byte v11, v2, v11

    if-ne v10, v11, :cond_6

    .line 524
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    add-int/lit8 v11, v6, 0x2

    aget-byte v10, v10, v11

    const/4 v11, 0x2

    aget-byte v11, v2, v11

    if-ne v10, v11, :cond_3

    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    add-int/lit8 v11, v6, 0x3

    aget-byte v10, v10, v11

    const/4 v11, 0x3

    aget-byte v11, v2, v11

    if-eq v10, v11, :cond_4

    :cond_3
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    aget-byte v10, v10, v6

    const/4 v11, 0x2

    aget-byte v11, v0, v11

    if-ne v10, v11, :cond_7

    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    add-int/lit8 v11, v6, 0x3

    aget-byte v10, v10, v11

    const/4 v11, 0x3

    aget-byte v11, v0, v11

    if-ne v10, v11, :cond_7

    .line 527
    :cond_4
    add-int v10, v7, v8

    sub-int/2addr v10, v6

    const/16 v11, 0xc

    sub-int v9, v10, v11

    .line 528
    const/4 v5, 0x1

    .line 535
    :cond_5
    :goto_2
    if-eqz v5, :cond_6

    .line 540
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    check-cast v3, Ljava/io/PushbackInputStream;

    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    add-int v11, v7, v8

    sub-int/2addr v11, v9

    invoke-virtual {v3, v10, v11, v9}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 541
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 542
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readDataDescriptor()V

    .line 522
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 530
    :cond_7
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    add-int/lit8 v11, v6, 0x2

    aget-byte v10, v10, v11

    const/4 v11, 0x2

    aget-byte v11, v1, v11

    if-ne v10, v11, :cond_5

    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    add-int/lit8 v11, v6, 0x3

    aget-byte v10, v10, v11

    const/4 v11, 0x3

    aget-byte v11, v1, v11

    if-ne v10, v11, :cond_5

    .line 532
    add-int v10, v7, v8

    sub-int v9, v10, v6

    .line 533
    const/4 v5, 0x1

    goto :goto_2

    .line 546
    :cond_8
    if-nez v5, :cond_0

    .line 552
    add-int v10, v7, v8

    const/16 v11, 0xf

    if-le v10, v11, :cond_9

    .line 553
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    const/4 v11, 0x0

    add-int v12, v7, v8

    const/16 v13, 0xf

    sub-int/2addr v12, v13

    invoke-virtual {v4, v10, v11, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 554
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    add-int v11, v7, v8

    const/16 v12, 0xf

    sub-int/2addr v11, v12

    iget-object v12, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    const/4 v13, 0x0

    const/16 v14, 0xf

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 555
    const/16 v7, 0xf

    goto/16 :goto_0

    .line 557
    :cond_9
    add-int/2addr v7, v8

    goto/16 :goto_0

    .line 562
    .end local v6           #i:I
    .end local v8           #r:I
    .end local v9           #readTooMuch:I
    :cond_a
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 563
    .local v3, b:[B
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    .line 564
    return-void
.end method

.method private supportsDataDescriptorFor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 2
    .parameter "entry"

    .prologue
    .line 478
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->allowStoredEntriesWithDataDescriptor:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesDataDescriptor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 4
    .parameter "ae"

    .prologue
    const/4 v3, 0x0

    .line 223
    instance-of v2, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    if-eqz v2, :cond_1

    .line 224
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-object v1, v0

    .line 225
    .local v1, ze:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->supportsDataDescriptorFor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 229
    .end local v1           #ze:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :goto_0
    return v2

    .restart local v1       #ze:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_0
    move v2, v3

    .line 225
    goto :goto_0

    .end local v1           #ze:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_1
    move v2, v3

    .line 229
    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    .line 312
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 314
    :cond_0
    return-void
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->getNextZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public getNextZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->hitCentralDirectory:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 132
    :cond_0
    const/16 v17, 0x0

    .line 207
    :goto_0
    return-object v17

    .line 134
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 135
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closeEntry()V

    .line 137
    :cond_2
    const/16 v17, 0x1e

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v11, v0

    .line 139
    .local v11, lfh:[B
    :try_start_0
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    new-instance v13, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-direct {v13, v11}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    .line 144
    .local v13, sig:Lorg/apache/commons/compress/archivers/zip/ZipLong;
    sget-object v17, Lorg/apache/commons/compress/archivers/zip/ZipLong;->CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 145
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->hitCentralDirectory:Z

    .line 146
    const/16 v17, 0x0

    goto :goto_0

    .line 140
    .end local v13           #sig:Lorg/apache/commons/compress/archivers/zip/ZipLong;
    :catch_0
    move-exception v3

    .line 141
    .local v3, e:Ljava/io/EOFException;
    const/16 v17, 0x0

    goto :goto_0

    .line 148
    .end local v3           #e:Ljava/io/EOFException;
    .restart local v13       #sig:Lorg/apache/commons/compress/archivers/zip/ZipLong;
    :cond_3
    sget-object v17, Lorg/apache/commons/compress/archivers/zip/ZipLong;->LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 149
    const/16 v17, 0x0

    goto :goto_0

    .line 152
    :cond_4
    const/4 v12, 0x4

    .line 153
    .local v12, off:I
    new-instance v17, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-direct/range {v17 .. v17}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 155
    invoke-static {v11, v12}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v16

    .line 156
    .local v16, versionMadeBy:I
    add-int/lit8 v12, v12, 0x2

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-object/from16 v17, v0

    shr-int/lit8 v18, v16, 0x8

    and-int/lit8 v18, v18, 0xf

    invoke-virtual/range {v17 .. v18}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setPlatform(I)V

    .line 160
    invoke-static {v11, v12}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->parse([BI)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v9

    .line 161
    .local v9, gpFlag:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesUTF8ForNames()Z

    move-result v10

    .line 162
    .local v10, hasUTF8Flag:Z
    if-eqz v10, :cond_6

    sget-object v17, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-object/from16 v4, v17

    .line 164
    .local v4, entryEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    :goto_1
    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesDataDescriptor()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->hasDataDescriptor:Z

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;)V

    .line 167
    add-int/lit8 v12, v12, 0x2

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-object/from16 v17, v0

    invoke-static {v11, v12}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setMethod(I)V

    .line 170
    add-int/lit8 v12, v12, 0x2

    .line 172
    invoke-static {v11, v12}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v14

    .line 173
    .local v14, time:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setTime(J)V

    .line 174
    add-int/lit8 v12, v12, 0x4

    .line 176
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->hasDataDescriptor:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-object/from16 v17, v0

    invoke-static {v11, v12}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCrc(J)V

    .line 178
    add-int/lit8 v12, v12, 0x4

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-object/from16 v17, v0

    invoke-static {v11, v12}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 181
    add-int/lit8 v12, v12, 0x4

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-object/from16 v17, v0

    invoke-static {v11, v12}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 184
    add-int/lit8 v12, v12, 0x4

    .line 189
    :goto_2
    invoke-static {v11, v12}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v8

    .line 191
    .local v8, fileNameLen:I
    add-int/lit8 v12, v12, 0x2

    .line 193
    invoke-static {v11, v12}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v6

    .line 194
    .local v6, extraLen:I
    add-int/lit8 v12, v12, 0x2

    .line 196
    new-array v7, v8, [B

    .line 197
    .local v7, fileName:[B
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-object/from16 v17, v0

    invoke-interface {v4, v7}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;)V

    .line 200
    new-array v5, v6, [B

    .line 201
    .local v5, extraData:[B
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra([B)V

    .line 204
    if-nez v10, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->useUnicodeExtraFields:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object v1, v7

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->setNameAndCommentFromExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;[B[B)V

    .line 207
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-object/from16 v17, v0

    goto/16 :goto_0

    .line 162
    .end local v4           #entryEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .end local v5           #extraData:[B
    .end local v6           #extraLen:I
    .end local v7           #fileName:[B
    .end local v8           #fileNameLen:I
    .end local v14           #time:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-object/from16 v17, v0

    move-object/from16 v4, v17

    goto/16 :goto_1

    .line 186
    .restart local v4       #entryEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .restart local v14       #time:J
    :cond_7
    add-int/lit8 v12, v12, 0xc

    goto :goto_2
.end method

.method public read([BII)I
    .locals 7
    .parameter "buffer"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 233
    iget-boolean v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    if-eqz v4, :cond_0

    .line 234
    new-instance v4, Ljava/io/IOException;

    const-string v5, "The stream is closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 236
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    if-nez v4, :cond_2

    :cond_1
    move v4, v6

    .line 304
    :goto_0
    return v4

    .line 241
    :cond_2
    array-length v4, p1

    if-gt p2, v4, :cond_f

    if-ltz p3, :cond_f

    if-ltz p2, :cond_f

    array-length v4, p1

    sub-int/2addr v4, p2

    if-lt v4, p3, :cond_f

    .line 243
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 244
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->supportsDataDescriptorFor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 245
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    sget-object v5, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;->DATA_DESCRIPTOR:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    throw v4

    .line 251
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v4

    if-nez v4, :cond_b

    .line 252
    iget-boolean v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->hasDataDescriptor:Z

    if-eqz v4, :cond_5

    .line 253
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    if-nez v4, :cond_4

    .line 254
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readStoredEntry()V

    .line 256
    :cond_4
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v4

    goto :goto_0

    .line 259
    :cond_5
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v4

    long-to-int v0, v4

    .line 260
    .local v0, csize:I
    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readBytesOfEntry:I

    if-lt v4, v0, :cond_6

    move v4, v6

    .line 261
    goto :goto_0

    .line 263
    :cond_6
    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->offsetInBuffer:I

    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lengthOfLastRead:I

    if-lt v4, v5, :cond_8

    .line 264
    const/4 v4, 0x0

    iput v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->offsetInBuffer:I

    .line 265
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    iput v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lengthOfLastRead:I

    if-ne v4, v6, :cond_7

    move v4, v6

    .line 266
    goto :goto_0

    .line 268
    :cond_7
    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lengthOfLastRead:I

    invoke-virtual {p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->count(I)V

    .line 269
    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->bytesReadFromStream:I

    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lengthOfLastRead:I

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->bytesReadFromStream:I

    .line 271
    :cond_8
    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lengthOfLastRead:I

    if-le p3, v4, :cond_a

    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lengthOfLastRead:I

    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->offsetInBuffer:I

    sub-int/2addr v4, v5

    move v3, v4

    .line 274
    .local v3, toRead:I
    :goto_1
    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readBytesOfEntry:I

    sub-int v4, v0, v4

    if-ge v4, v3, :cond_9

    .line 275
    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readBytesOfEntry:I

    sub-int v3, v0, v4

    .line 277
    :cond_9
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:[B

    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->offsetInBuffer:I

    invoke-static {v4, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->offsetInBuffer:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->offsetInBuffer:I

    .line 279
    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readBytesOfEntry:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readBytesOfEntry:I

    .line 280
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4, p1, p2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    move v4, v3

    .line 281
    goto/16 :goto_0

    .end local v3           #toRead:I
    :cond_a
    move v3, p3

    .line 271
    goto :goto_1

    .line 284
    .end local v0           #csize:I
    :cond_b
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 285
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->fill()V

    .line 286
    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lengthOfLastRead:I

    if-lez v4, :cond_c

    .line 287
    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->bytesReadFromStream:I

    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lengthOfLastRead:I

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->bytesReadFromStream:I

    .line 290
    :cond_c
    const/4 v2, 0x0

    .line 292
    .local v2, read:I
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 296
    if-nez v2, :cond_e

    .line 297
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v6

    .line 298
    goto/16 :goto_0

    .line 293
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 294
    .local v1, e:Ljava/util/zip/DataFormatException;
    new-instance v4, Ljava/util/zip/ZipException;

    invoke-virtual {v1}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 299
    .end local v1           #e:Ljava/util/zip/DataFormatException;
    :cond_d
    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lengthOfLastRead:I

    if-ne v4, v6, :cond_e

    .line 300
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Truncated ZIP file"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 303
    :cond_e
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4, p1, p2, v2}, Ljava/util/zip/CRC32;->update([BII)V

    move v4, v2

    .line 304
    goto/16 :goto_0

    .line 306
    .end local v2           #read:I
    :cond_f
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4
.end method

.method public skip(J)J
    .locals 9
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-ltz v6, :cond_3

    .line 318
    const-wide/16 v3, 0x0

    .line 319
    .local v3, skipped:J
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 320
    .local v0, b:[B
    :goto_0
    cmp-long v6, v3, p1

    if-eqz v6, :cond_0

    .line 321
    sub-long v1, p1, v3

    .line 322
    .local v1, rem:J
    const/4 v6, 0x0

    array-length v7, v0

    int-to-long v7, v7

    cmp-long v7, v7, v1

    if-lez v7, :cond_1

    move-wide v7, v1

    :goto_1
    long-to-int v7, v7

    invoke-virtual {p0, v0, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->read([BII)I

    move-result v5

    .line 323
    .local v5, x:I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 328
    .end local v1           #rem:J
    .end local v5           #x:I
    :cond_0
    return-wide v3

    .line 322
    .restart local v1       #rem:J
    :cond_1
    array-length v7, v0

    int-to-long v7, v7

    goto :goto_1

    .line 326
    .restart local v5       #x:I
    :cond_2
    int-to-long v6, v5

    add-long/2addr v3, v6

    .line 327
    goto :goto_0

    .line 330
    .end local v0           #b:[B
    .end local v1           #rem:J
    .end local v3           #skipped:J
    .end local v5           #x:I
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6
.end method
