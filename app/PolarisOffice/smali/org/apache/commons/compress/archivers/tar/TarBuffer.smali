.class Lorg/apache/commons/compress/archivers/tar/TarBuffer;
.super Ljava/lang/Object;
.source "TarBuffer.java"


# static fields
.field public static final DEFAULT_BLKSIZE:I = 0x2800

.field public static final DEFAULT_RCDSIZE:I = 0x200


# instance fields
.field private blockBuffer:[B

.field private blockSize:I

.field private currBlkIdx:I

.field private currRecIdx:I

.field private inStream:Ljava/io/InputStream;

.field private outStream:Ljava/io/OutputStream;

.field private recordSize:I

.field private recsPerBlock:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "inStream"

    .prologue
    .line 61
    const/16 v0, 0x2800

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;-><init>(Ljava/io/InputStream;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .parameter "inStream"
    .parameter "blockSize"

    .prologue
    .line 70
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;-><init>(Ljava/io/InputStream;II)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1
    .parameter "inStream"
    .parameter "blockSize"
    .parameter "recordSize"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    .line 83
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->initialize(II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "outStream"

    .prologue
    .line 91
    const/16 v0, 0x2800

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;-><init>(Ljava/io/OutputStream;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .parameter "outStream"
    .parameter "blockSize"

    .prologue
    .line 100
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;-><init>(Ljava/io/OutputStream;II)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;II)V
    .locals 1
    .parameter "outStream"
    .parameter "blockSize"
    .parameter "recordSize"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    .line 111
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    .line 113
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->initialize(II)V

    .line 114
    return-void
.end method

.method private flushBlock()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    if-lez v0, :cond_1

    .line 388
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->writeBlock()V

    .line 390
    :cond_1
    return-void
.end method

.method private initialize(II)V
    .locals 3
    .parameter "blockSize"
    .parameter "recordSize"

    .prologue
    const/4 v2, 0x0

    .line 120
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockSize:I

    .line 121
    iput p2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    .line 122
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockSize:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recsPerBlock:I

    .line 123
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockBuffer:[B

    .line 125
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currBlkIdx:I

    .line 127
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recsPerBlock:I

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    iput v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currBlkIdx:I

    .line 130
    iput v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    goto :goto_0
.end method

.method private readBlock()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 220
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-nez v4, :cond_0

    .line 221
    new-instance v4, Ljava/io/IOException;

    const-string v5, "reading from an output buffer"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 224
    :cond_0
    iput v6, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    .line 226
    const/4 v3, 0x0

    .line 227
    .local v3, offset:I
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockSize:I

    .line 229
    .local v0, bytesNeeded:I
    :cond_1
    :goto_0
    if-lez v0, :cond_3

    .line 230
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockBuffer:[B

    invoke-virtual {v4, v5, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    int-to-long v1, v4

    .line 246
    .local v1, numBytes:J
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_4

    .line 247
    if-nez v3, :cond_2

    move v4, v6

    .line 274
    .end local v1           #numBytes:J
    :goto_1
    return v4

    .line 259
    .restart local v1       #numBytes:J
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockBuffer:[B

    add-int v5, v3, v0

    invoke-static {v4, v3, v5, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 272
    .end local v1           #numBytes:J
    :cond_3
    iget v4, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currBlkIdx:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currBlkIdx:I

    .line 274
    const/4 v4, 0x1

    goto :goto_1

    .line 264
    .restart local v1       #numBytes:J
    :cond_4
    int-to-long v4, v3

    add-long/2addr v4, v1

    long-to-int v3, v4

    .line 265
    int-to-long v4, v0

    sub-long/2addr v4, v1

    long-to-int v0, v4

    .line 267
    iget v4, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockSize:I

    int-to-long v4, v4

    cmp-long v4, v1, v4

    if-eqz v4, :cond_1

    goto :goto_0
.end method

.method private writeBlock()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 367
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockBuffer:[B

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockSize:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 372
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 374
    iput v3, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    .line 375
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currBlkIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currBlkIdx:I

    .line 376
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockBuffer:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 377
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 398
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 399
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->flushBlock()V

    .line 401
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_0

    .line 403
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 405
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_0

    .line 409
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 411
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockSize:I

    return v0
.end method

.method public getCurrentBlockNum()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currBlkIdx:I

    return v0
.end method

.method public getCurrentRecordNum()I
    .locals 2

    .prologue
    .line 293
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRecordSize()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    return v0
.end method

.method public isEOFRecord([B)Z
    .locals 3
    .parameter "record"

    .prologue
    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->getRecordSize()I

    move-result v1

    .local v1, sz:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 159
    aget-byte v2, p1, v0

    if-eqz v2, :cond_0

    .line 160
    const/4 v2, 0x0

    .line 164
    :goto_1
    return v2

    .line 158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public readRecord()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-nez v1, :cond_1

    .line 193
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    .line 194
    new-instance v1, Ljava/io/IOException;

    const-string v2, "input buffer is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "reading from an output buffer"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_1
    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recsPerBlock:I

    if-lt v1, v2, :cond_2

    .line 200
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->readBlock()Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    const/4 v1, 0x0

    .line 213
    :goto_0
    return-object v1

    .line 205
    :cond_2
    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    new-array v0, v1, [B

    .line 207
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockBuffer:[B

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    move-object v1, v0

    .line 213
    goto :goto_0
.end method

.method public skipRecord()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading (via skip) from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recsPerBlock:I

    if-lt v0, v1, :cond_1

    .line 177
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->readBlock()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_1
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    goto :goto_0
.end method

.method public writeRecord([B)V
    .locals 4
    .parameter "record"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    .line 304
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output buffer is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_1
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    if-eq v0, v1, :cond_2

    .line 311
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "record to write has length \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' which is not the record size of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_2
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recsPerBlock:I

    if-lt v0, v1, :cond_3

    .line 318
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->writeBlock()V

    .line 321
    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockBuffer:[B

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    mul-int/2addr v2, v3

    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    .line 326
    return-void
.end method

.method public writeRecord([BI)V
    .locals 3
    .parameter "buf"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    .line 339
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output buffer is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_1
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 346
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "record has length \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' with offset \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' which is less than the record size of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_2
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recsPerBlock:I

    if-lt v0, v1, :cond_3

    .line 353
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->writeBlock()V

    .line 356
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockBuffer:[B

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    mul-int/2addr v1, v2

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    .line 361
    return-void
.end method
